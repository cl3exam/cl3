package com.example.komal.mycalculator;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;

public class MainActivity extends AppCompatActivity implements View.OnClickListener{

    Button add,sub,mul,div,clear,sin,cos,tan,sqrt,save,recall,file;
    private TextView res;
    private EditText num1, num2;
    double saved_value;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        init();
    }

    public void init()
    {
        add = (Button)findViewById(R.id.add);
        sub = (Button)findViewById(R.id.sub);
        mul = (Button)findViewById(R.id.mul);
        div = (Button)findViewById(R.id.div);
        sin = (Button)findViewById(R.id.sin);
        cos = (Button)findViewById(R.id.cos);
        tan = (Button)findViewById(R.id.tan);
        sqrt = (Button)findViewById(R.id.sqrt);
        clear = (Button)findViewById(R.id.clear);
        save = (Button)findViewById(R.id.save);
        recall = (Button)findViewById(R.id.recall);
        file = (Button)findViewById(R.id.file);

        res = (TextView)findViewById(R.id.res);

        num1 = (EditText)findViewById(R.id.num1);
        num2 = (EditText)findViewById(R.id.num2);

        add.setOnClickListener(this);
        sub.setOnClickListener(this);
        mul.setOnClickListener(this);
        div.setOnClickListener(this);
        sin.setOnClickListener(this);
        cos.setOnClickListener(this);
        tan.setOnClickListener(this);
        sqrt.setOnClickListener(this);
        clear.setOnClickListener(this);
        save.setOnClickListener(this);
        recall.setOnClickListener(this);
        file.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        String n1 = num1.getText().toString();
        String n2 = num2.getText().toString();

        switch(v.getId()){
            case R.id.add:
                double add_res = Double.parseDouble(n1)+Double.parseDouble(n2);
                res.setText(String.valueOf(add_res));
                break;

            case R.id.sub:
                double sub_res = Double.parseDouble(n1)-Double.parseDouble(n2);
                res.setText(String.valueOf(sub_res));
                break;

            case R.id.mul:
                double mul_res = Double.parseDouble(n1)*Double.parseDouble(n2);
                res.setText(String.valueOf(mul_res));
                break;

            case R.id.div:
                try{
                    Double div_res = Double.parseDouble(n1)/Double.parseDouble(n2);
                    res.setText(String.valueOf(div_res));
                }
                catch (Exception e){
                    res.setText("Exception "+e+"!");
                }
                break;

            case R.id.sin:
                num2.setText(" ");
                double sin_res = Math.sin(Double.parseDouble(n1));
                res.setText(String.valueOf(sin_res));
                break;

            case R.id.cos:
                num2.setText(" ");
                double cos_res = Math.cos(Double.parseDouble(n1));
                res.setText(String.valueOf(cos_res));
                break;

            case R.id.tan:
                num2.setText(" ");
                double tan_res = Math.tan(Double.parseDouble(n1));
                res.setText(String.valueOf(tan_res));
                break;

            case R.id.sqrt:
                num2.setText(" ");
                double sqrt_res = Math.sqrt(Double.parseDouble(n1));
                res.setText(String.valueOf(sqrt_res));
                break;

            case R.id.clear:
                num2.setText(" ");
                num1.setText(" ");
                res.setText(" ");
                break;

            case R.id.save:
                saved_value = Double.parseDouble(res.getText().toString());
                num1.setText(" ");
                num2.setText(" ");
                res.setText("Result");
                break;

            case R.id.recall:
                num1.setText(String.valueOf(saved_value));
                break;

            case R.id.file:
                try
                {
                    String fname = "data.txt";
                    java.io.InputStream stream = getAssets().open(fname);
                    BufferedReader buf = new BufferedReader(new InputStreamReader(stream));
                    String number1 = buf.readLine();
                    String number2 = buf.readLine();
                    num1.setText(number1);
                    num2.setText(number2);
                }
                catch (Exception e){
                    res.setText("Exception: "+e);
                }
                break;
        }
    }
}
