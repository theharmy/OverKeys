import 'package:win32/win32.dart';

int getVirtualKeyCode(String key) {
  switch (key) {
    case 'A':
      return VK_A;
    case 'B':
      return VK_B;
    case 'C':
      return VK_C;
    case 'D':
      return VK_D;
    case 'E':
      return VK_E;
    case 'F':
      return VK_F;
    case 'G':
      return VK_G;
    case 'H':
      return VK_H;
    case 'I':
      return VK_I;
    case 'J':
      return VK_J;
    case 'K':
      return VK_K;
    case 'L':
      return VK_L;
    case 'M':
      return VK_M;
    case 'N':
      return VK_N;
    case 'O':
      return VK_O;
    case 'P':
      return VK_P;
    case 'Q':
      return VK_Q;
    case 'R':
      return VK_R;
    case 'S':
      return VK_S;
    case 'T':
      return VK_T;
    case 'U':
      return VK_U;
    case 'V':
      return VK_V;
    case 'W':
      return VK_W;
    case 'X':
      return VK_X;
    case 'Y':
      return VK_Y;
    case 'Z':
      return VK_Z;
    case ' ':
      return VK_SPACE;
    case ',':
      return VK_OEM_COMMA;
    case '.':
      return VK_OEM_PERIOD;
    case ';':
      return VK_OEM_1;
    case '/':
      return VK_OEM_2;
    case '?':
      return VK_OEM_2;
    // No virtual key code for number sign
    case '#':
      return VK_3;
    case '[':
      return VK_OEM_4;
    case ']':
      return VK_OEM_6;
    // No separate keycode for single and double quotes
    case "'":
      return VK_OEM_7;
    case '"':
      return VK_OEM_7;
    case '=':
      return VK_OEM_PLUS;
    case '-':
      return VK_OEM_MINUS;
    default:
      return 0;
  }
}
