package dev.touyou.countcompose

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Column
import androidx.compose.material.Button
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Surface
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.tooling.preview.Preview
import dev.touyou.countcompose.ui.theme.CountComposeTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            CountComposeTheme {
                // A surface container using the 'background' color from the theme
                Surface(color = MaterialTheme.colors.background) {
                    Count()
                }
            }
        }
    }
}

@Composable
fun Count() {
    Column {
        var count by remember {
            mutableStateOf(0)
        }
        Text(text = count.toString())
        Column {
            Button(onClick = { count += 1 }) {
                Text(text = "Plus")
            }
            Button(onClick = { count -= 1 }) {
                Text(text = "Minus")
            }
            Button(onClick = { count = 0 }) {
                Text(text = "Reset")
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    CountComposeTheme {
        Count()
    }
}