$fn=150;
dlzka=150;sirka=90;hrubka=5;
d_diera=20;s_diera=60; okraj=20;
stlpx=10; stlpy=5; stlpz=15; stlpvzd=50; ely=10; 
difference (){
    cube ([dlzka,sirka+ely,hrubka]);
    translate ([okraj,sirka/2-s_diera/2,0]) cube ([d_diera,s_diera,hrubka]);
    translate ([dlzka-okraj-d_diera,sirka/2-s_diera/2,0]) cube ([d_diera,s_diera,hrubka]);
    translate ([okraj+d_diera+10,sirka/2,0]) cylinder (hrubka,3.4/2,3.4/2);
    translate ([dlzka-okraj-d_diera-10,sirka/2,0]) cylinder (hrubka,3.4/2,3.4/2);
    translate ([okraj+d_diera+10,sirka/2,hrubka-3]) cylinder (3,3.1,3.1,$fn=6,center=false);
    translate ([dlzka-okraj-d_diera-10,sirka/2,hrubka-3]) cylinder (3,3.1,3.1,$fn=6,center=false);
    translate ([dlzka/2,sirka-okraj+ely*1.5,0]){
        translate ([0,0,hrubka-3]) cylinder (3,3.1,3.1,$fn=6,center=false);
        cylinder (hrubka,3.4/2,3.4/2);
    };
    for(i = [-6 : 6]){
        translate ([dlzka/2+10.16*i,sirka-okraj+ely*1.5,0]){
            translate ([0,0,hrubka-3]) cylinder (3,3.1,3.1,$fn=6,center=false);
            cylinder (hrubka,3.4/2,3.4/2);
        };    
    }
}
 
difference (){
    union (){
         translate ([dlzka/2,sirka/2,stlpz+stlpx/4]) rotate ([90]) cylinder (stlpy*2+stlpvzd,stlpx/2,stlpx/2,center=true); 
        translate ([dlzka/2-stlpx/2,sirka/2-stlpvzd/2-stlpy,hrubka]) cube ([stlpx,stlpy*2+stlpvzd,stlpz]);
        
    }
    translate ([dlzka/2-stlpx/2,sirka/2-stlpvzd/2,hrubka]) cube ([stlpx,stlpvzd,stlpvzd]);
     translate ([dlzka/2,sirka/2,stlpz+stlpx/4]) rotate ([90]) cylinder (sirka,3.4/2,3.4/2,center=true) ;
}
//rotate ([90]) translate ([35,2.5,-70]) cylinder (60,2.5,2.5);
//rotate ([90]) translate ([85,2.5,-70]) cylinder (60,2.5,2.5);
