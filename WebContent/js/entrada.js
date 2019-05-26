/**
 * 
 */

$(document).ready(function () {
    

   $("button.btn").click(function () { 
       if($(this).hasClass("btn btn-primary btn-circle btn-lg")){
            $(this).removeClass();
            $(this).addClass("btn btn-default btn-circle btn-lg");
            
            $("#table").append("<tr id="+this.id+"tr> <td>"+this.id.substring(1,2)+"</td> <td>"+this.id.substring(2,3)+"</td> <td>14€</td>   </tr>");
          
           //$("afegirButaques").append(" <input type='hidden' name='llistaids' value="+this.id.trim()+" id='afegirButaques_llistaids'/> ");
           //$("afegirButaques").append(" <input type='text' name='llistaids' value="+this.id.trim()+" id='afegirButaques_llistaids'/> ");
            $('<input>').attr({
                type: 'hidden',
                id: this.id.trim()+"input",
                name: 'llistaids',
                value: this.id.trim()
            }).appendTo('form');
      
       
       }else{
        $(this).removeClass();
        $(this).addClass("btn btn-primary btn-circle btn-lg");
        
      // $(this.id+"tr").remove();
        
        $("#"+this.id.trim()+"tr").remove();
        $("#"+this.id.trim()+"input").remove();
       
       
       //  document.getElementById(this.id+"tr").remove();
      
       
       }
    })
       
    
    /*document.getElementById("afegirButaques").addEventListener(function(){
        var num= Math.floor(Math.random()*100);

        if(num>=0 && num<=30){
            return false;
        }else{
            return true;
        }
            
        }); 
       */
      
           
       /* $("#boto").click(function (e) { 
            //e.preventDefault();

            var num= Math.floor(Math.random()*100);

            if(num>=0 && num<=30){
                $("#afegirButaques").submit();
            }else{
              e.preventDefault();
            }
            
        });
       */
    
    $("#afegirButaques").submit(function (event) { 
        event.preventDefault();
        var num= Math.floor(Math.random()*100);
        if(num>=0 && num<=15){
            swal({
                title: "Error",
                text: "Hi ha hagut un error a l'hora de processar la teva sol·licitud, torna-ho a intentar",
                icon: "error",
                button: "D'acord",
              });
            return false;
        }else{
        	$(this).unbind('submit').submit(); 
        }
        //$(this).unbind('submit').submit(); 
    });
  

  
  
});
