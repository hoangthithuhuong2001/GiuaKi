package com.example.giuaki;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    Button btnChonbai, btnPlay, btnPause;
    TextView txtNghenhac, txtTitle;

    ArrayList<Song> arraySong;
    int position = 0;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        Anhxa();
        AddSong();
        btnPlay.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                MediaPlayer mediaPlayer = MediaPlayer.create(MainActivity.this, arraySong.get(position).getFile());
                mediaPlayer.start();
                txtTitle.setText(arraySong.get(position).getTitle());


            }
        });

    }
    private  void AddSong()
    {
        arraySong = new ArrayList<>();
        arraySong.add(new Song("Anh không sao đâu", R.raw.anhkhongsaodau_chidan));
        arraySong.add(new Song("Cô bé mùa đông", R.raw.cobemuadong));
        arraySong.add(new Song("1234", R.raw.mothaibabon_chidan));
        arraySong.add(new Song("Người tôi yêu", R.raw.nguoitoiyeu_chidan));
        arraySong.add(new Song("Sự thật sau một lời hứa", R.raw.suthatsaumotloihua));
        arraySong.add(new Song("Thế giới thứ tư", R.raw.thegioithutu_chidan));

    }
    private void Anhxa()
    {
        txtNghenhac = (TextView) findViewById(R.id.txtNghenhac);
        btnChonbai = (Button) findViewById(R.id.btnChonbai);
        btnPlay = (Button) findViewById(R.id.btnPlay);
        btnPause = (Button) findViewById(R.id.btnPause);

    }
}