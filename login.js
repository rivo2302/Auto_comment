import React , {Component} from 'react';

import  {
  StyleSheet,
  TextInput,
  Text,
  View,
  TouchableOpacity,
  ImageBackground,
  TextInputComponent
} from 'react-native';
import bgImage from './assets/test.jpg'
import Icon from 'react-native-vector-icons/FontAwesome'

export default class Example extends Component{
  constructor(){
    super()
    this.state ={
      showPass:true,
      press : false
    }
  }
  showPass=()=>{
    if(this.state.press===false){
      this.setState({
        showPass :false,press:true})
      }else{
        this.setState({
          showPass :true,press:false})
      }
    
  }
    render (){
      return ( 
        <ImageBackground source={bgImage} style={styles.backgroundContainer}>
            <View style ={styles.logoContainer}>            
                <Text style={styles.logoText}>Alandia</Text>
            </View>
           <View>
              <Icon name={'user'} size={28}  style={styles.inputIcon}/>
              <TextInput style={styles.input}
                placeholder={'username'}
                placeholderTextColor={'rgba(255,255,255,0.7'}
                underlineColorAndroid =  'transparent'
            />

            </View>

            <View>
              <Icon name={'key'} size={20} color={'rgba(22,55,44,0.7)'} style={styles.inputIcon }/>  
              <TextInput  
                style={styles.input}
                placeholder={'password'}
                secureTextEntry={this.state.showPass}
                placeholderTextColor={'rgba(255,255,255,0.7'}
                underlineColorAndroid =  'transparent'
              />
              <TouchableOpacity style={styles.btnEye} onPress={this.showPass.bind(this)}>
                <Icon name={this.state.press==false ?'lock':'unlock-alt'} size={26} color={"#4ffff"}/>
              </TouchableOpacity>
            </View>
            <TouchableOpacity style={styles.btnLogin}>
                <Icon name={'ios-eye-outline'} size={26} color={"#4ffff"}/>
                <Text> Login</Text>
              </TouchableOpacity>
        </ImageBackground> 
      );
    }
}
const styles =StyleSheet.create({
     backgroundContainer:{
      flex:1,
      justifyContent:'center',
      alignItems: 'center',
      backgroundColor:'#f5f5f'
    },
    welcome:{
      fontSIze:20,
      textAlign:'center',
      margin:10
    },
    instructions:{
      textAlign:'center',
    },
    logoContainer :{
      alignItems:'center'
    },
    logo :{
      width:120,
      height:130
    },
    logoText:{
      fontSize:41   
    },
    input :{
      width:120,
      height :45,
      color:'#55547',   
      borderRadius:25,
      marginHorizontal :25
    },
    inputIcon :{
      position:'absolute'
    },
    btnEye:{
      position :'absolute',
      top:8,
      right:37
    },
    btnLogin :{
      width:120,
      height :45,
      color:'red',
      borderRadius:25,
      marginHorizontal :25,
      backgroundColor:'#45664'
    },
    text:{
      color:'rgba(255,255,2555,0,5)',
      fontSize:16,
      textAlign:'center'
    }
})  ;