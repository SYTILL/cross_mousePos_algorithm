int cas = 0;
int x=0, y=0;
int mx,my;
int unit = 200;
int half = unit/2;
int map = 600;

void setup(){
    size(600,600);
    textSize(32);
    loop();
}

void draw(){
    background(224);
    grid();
    text("case: ("+x+','+y+')',50,30);
    mousePos();
    if(mousePressed){
        if(x%2==0) rect(x*half-2,y*unit,4,unit);
        else rect(x*half-half,y*unit-2,unit,4);
    }
}

void mousePos(){
    x = 2*(mouseX/unit);
    y = mouseY/unit;
    mx = mouseX%unit;
    my = mouseY%unit;
    if(mx>my){
        if((unit-mx)<my){x+=2;}
        else{x++;}
    }else if((unit-mx)<my){x++;y++;}
}



void grid(){
    int i,j;
    for(i=0;i<3;i++){
        j=i+1;
        line(0,i*unit,map,i*unit);
        line(i*unit,0,i*unit,map);
        line(0,j*unit,j*unit,0); 
        line(map-(j*unit),0,map,j*unit);
    }
    for(i=1;i<3;i++){
       line(i*unit,map,map,i*unit);
       line(0,map-(i*unit),i*unit,map);
    }
}
