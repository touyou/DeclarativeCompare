package dev.touyou.countcompose

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
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
    Column(
        modifier = Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        var count by remember {
            mutableStateOf(0)
        }
        Text(
            text = count.toString(),
            fontSize = 30.sp,
            fontWeight = FontWeight.Bold
        )
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            LongButton(onClick = { count += 1 }, text = "Plus")
            LongButton(onClick = { count -= 1 }, text = "Minus")
            LongButton(onClick = { count = 0 }, text = "Reset", isDestructive = true)
        }
    }
}

@Composable
fun LongButton(onClick: () -> Unit, text: String, isDestructive: Boolean = false) {
    Button(
        onClick = onClick,
        colors = if (isDestructive) {
            ButtonDefaults.buttonColors(
                backgroundColor = MaterialTheme.colors.error
            )
        } else ButtonDefaults.buttonColors()
    ) {
        Text(
            text = text,
            modifier = Modifier.fillMaxWidth(),
            textAlign = TextAlign.Center,
            fontSize = 15.sp,
            fontWeight = FontWeight.Bold
        )
    }
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    CountComposeTheme {
        Count()
    }
}