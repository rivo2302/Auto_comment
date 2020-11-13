import React, {Component} from 'react';
import { StyleSheet, Text, View, FlatList,Image, TouchableOpacity,Alert} from 'react-native';
import {parc_list_item} from './parc_list_item'


 
export default class App extends Component { 
  constructor(props) {
    super(props);
    this.state = {
      dataSource:[]
     };
   }
  componentDidMount(){
    fetch("http://127.0.0.1:5000/list_film")
    .then(response => response.json())
    .then((responseJson)=> {
      this.setState({
       dataSource: responseJson
      })
    })
    .catch(error=>console.log(error)) //to catch the errors if any
    }
 
    render(){
     return(
      <View style={{padding:10}}>
      <FlatList
      padding ={30}
         data={this.state.dataSource}
         renderItem={({item}) => 
         <TouchableOpacity 
         
         >
            <View style={styles.main_container}>
            <Image
              style={styles.image}
              source={require('./assets/icon.png')}
            />
              <View style={styles.content_container}>
              <View style={styles.header_container}>
              <Text style={styles.title_text}>{item.nom_parc}</Text>  
              </View>
              <View style={styles.description_container}>
              <Text style={styles.description_text} numberOfLines={6}>{item.description}</Text>
                {/* La propriété numberOfLines permet de couper un texte si celui-ci est trop long, il suffit de définir un nombre maximum de ligne */}
              </View>
              <View style={styles.date_container}>
              <Text style={styles.date_text}>{item.nom_province}</Text>
              </View>
              </View>
              </View>
              
          </TouchableOpacity>
      
        }
       />
      
     </View>
     )}
}

const styles = StyleSheet.create({
  main_container: {
    height: 190,
    flexDirection: 'row'
  },
  image: {
    width: 120,
    height: 180,
    margin: 5,
    backgroundColor: 'gray'
  },
  content_container: {
    flex: 1,
    margin: 5
  },
  header_container: {
    flex: 3,
    flexDirection: 'row'
  },
  title_text: {
    fontWeight: 'bold',
    fontSize: 20,
    flex: 1,
    flexWrap: 'wrap',
    paddingRight: 5
  },
  description_container: {
    flex: 7
  },
  description_text: {
    fontStyle: 'italic',
    color: '#666666'
  },
  date_container: {
    flex: 1
  },
  date_text: {
    textAlign: 'right',
    fontSize: 14
  }
})