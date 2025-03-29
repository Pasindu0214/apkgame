.class public Lcom/watabou/input/KeyBindings;
.super Ljava/lang/Object;
.source "KeyBindings.java"


# static fields
.field public static acceptUnbound:Z

.field public static bindings:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/watabou/input/GameAction;",
            ">;"
        }
    .end annotation
.end field

.field public static hardBindings:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/watabou/input/GameAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/watabou/input/KeyBindings;->bindings:Ljava/util/LinkedHashMap;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/watabou/input/KeyBindings;->hardBindings:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/watabou/input/KeyBindings;->acceptUnbound:Z

    return-void
.end method

.method public static getActionForKey(Lcom/watabou/input/KeyEvent;)Lcom/watabou/input/GameAction;
    .locals 2

    .line 1
    sget-object v0, Lcom/watabou/input/KeyBindings;->bindings:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcom/watabou/input/KeyEvent;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/watabou/input/KeyBindings;->bindings:Ljava/util/LinkedHashMap;

    iget p0, p0, Lcom/watabou/input/KeyEvent;->code:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/watabou/input/GameAction;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/watabou/input/KeyBindings;->hardBindings:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcom/watabou/input/KeyEvent;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/watabou/input/KeyBindings;->hardBindings:Ljava/util/LinkedHashMap;

    iget p0, p0, Lcom/watabou/input/KeyEvent;->code:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/watabou/input/GameAction;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/watabou/input/GameAction;->NONE:Lcom/watabou/input/GameAction;

    return-object p0
.end method

.method public static getAllBindings()Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/watabou/input/GameAction;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/watabou/input/KeyBindings;->bindings:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getBoundKeysForAction(Lcom/watabou/input/GameAction;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/watabou/input/GameAction;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/watabou/input/KeyBindings;->bindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3
    sget-object v3, Lcom/watabou/input/KeyBindings;->bindings:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getKeyName(I)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "None"

    return-object p0

    :cond_0
    const/16 v0, 0x51

    if-ne p0, v0, :cond_1

    const-string p0, "+"

    return-object p0

    :cond_1
    const/16 v0, 0x43

    if-ne p0, v0, :cond_2

    const-string p0, "Backspace"

    return-object p0

    :cond_2
    const-string v0, "Delete"

    const/16 v1, 0x70

    if-ne p0, v1, :cond_3

    return-object v0

    :cond_3
    if-ltz p0, :cond_6

    const/16 v2, 0xff

    if-gt p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "Button Mode"

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "Select"

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "Start"

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "Right Thumb"

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "Left Thumb"

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "R2 Button"

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "L2 Button"

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "R1 Button"

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "L1 Button"

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "Z Button"

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "Y Button"

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "X Button"

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "C Button"

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "B Button"

    goto/16 :goto_0

    :pswitch_e
    const-string v0, "A Button"

    goto/16 :goto_0

    :pswitch_f
    const-string v0, "SWITCH_CHARSET"

    goto/16 :goto_0

    :pswitch_10
    const-string v0, "PICTSYMBOLS"

    goto/16 :goto_0

    :pswitch_11
    const-string v0, "Page Down"

    goto/16 :goto_0

    :pswitch_12
    const-string v0, "Page Up"

    goto/16 :goto_0

    :pswitch_13
    const-string v0, "Mute"

    goto/16 :goto_0

    :pswitch_14
    const-string v0, "Fast Forward"

    goto/16 :goto_0

    :pswitch_15
    const-string v0, "Rewind"

    goto/16 :goto_0

    :pswitch_16
    const-string v0, "Prev Media"

    goto/16 :goto_0

    :pswitch_17
    const-string v0, "Next Media"

    goto/16 :goto_0

    :pswitch_18
    const-string v0, "Stop Media"

    goto/16 :goto_0

    :pswitch_19
    const-string v0, "Play/Pause"

    goto/16 :goto_0

    :pswitch_1a
    const-string v0, "Search"

    goto/16 :goto_0

    :pswitch_1b
    const-string v0, "Notification"

    goto/16 :goto_0

    :pswitch_1c
    const-string v0, "Menu"

    goto/16 :goto_0

    :pswitch_1d
    const-string v0, "Plus"

    goto/16 :goto_0

    :pswitch_1e
    const-string v0, "Focus"

    goto/16 :goto_0

    :pswitch_1f
    const-string v0, "Headset Hook"

    goto/16 :goto_0

    :pswitch_20
    const-string v0, "Num"

    goto/16 :goto_0

    :pswitch_21
    const-string v0, "@"

    goto/16 :goto_0

    :pswitch_22
    const-string v0, "/"

    goto/16 :goto_0

    :pswitch_23
    const-string v0, "\'"

    goto/16 :goto_0

    :pswitch_24
    const-string v0, ";"

    goto/16 :goto_0

    :pswitch_25
    const-string v0, "\\"

    goto/16 :goto_0

    :pswitch_26
    const-string v0, "]"

    goto/16 :goto_0

    :pswitch_27
    const-string v0, "["

    goto/16 :goto_0

    :pswitch_28
    const-string v0, "="

    goto/16 :goto_0

    :pswitch_29
    const-string v0, "-"

    goto/16 :goto_0

    :pswitch_2a
    const-string v0, "`"

    goto/16 :goto_0

    :pswitch_2b
    const-string v0, "Enter"

    goto/16 :goto_0

    :pswitch_2c
    const-string v0, "Envelope"

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "Explorer"

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "SYM"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "Space"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "Tab"

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "R-Shift"

    goto/16 :goto_0

    :pswitch_32
    const-string v0, "L-Shift"

    goto/16 :goto_0

    :pswitch_33
    const-string v0, "R-Alt"

    goto/16 :goto_0

    :pswitch_34
    const-string v0, "L-Alt"

    goto/16 :goto_0

    :pswitch_35
    const-string v0, "."

    goto/16 :goto_0

    :pswitch_36
    const-string v0, ","

    goto/16 :goto_0

    :pswitch_37
    const-string v0, "Z"

    goto/16 :goto_0

    :pswitch_38
    const-string v0, "Y"

    goto/16 :goto_0

    :pswitch_39
    const-string v0, "X"

    goto/16 :goto_0

    :pswitch_3a
    const-string v0, "W"

    goto/16 :goto_0

    :pswitch_3b
    const-string v0, "V"

    goto/16 :goto_0

    :pswitch_3c
    const-string v0, "U"

    goto/16 :goto_0

    :pswitch_3d
    const-string v0, "T"

    goto/16 :goto_0

    :pswitch_3e
    const-string v0, "S"

    goto/16 :goto_0

    :pswitch_3f
    const-string v0, "R"

    goto/16 :goto_0

    :pswitch_40
    const-string v0, "Q"

    goto/16 :goto_0

    :pswitch_41
    const-string v0, "P"

    goto/16 :goto_0

    :pswitch_42
    const-string v0, "O"

    goto/16 :goto_0

    :pswitch_43
    const-string v0, "N"

    goto/16 :goto_0

    :pswitch_44
    const-string v0, "M"

    goto/16 :goto_0

    :pswitch_45
    const-string v0, "L"

    goto/16 :goto_0

    :pswitch_46
    const-string v0, "K"

    goto/16 :goto_0

    :pswitch_47
    const-string v0, "J"

    goto/16 :goto_0

    :pswitch_48
    const-string v0, "I"

    goto/16 :goto_0

    :pswitch_49
    const-string v0, "H"

    goto/16 :goto_0

    :pswitch_4a
    const-string v0, "G"

    goto/16 :goto_0

    :pswitch_4b
    const-string v0, "F"

    goto/16 :goto_0

    :pswitch_4c
    const-string v0, "E"

    goto/16 :goto_0

    :pswitch_4d
    const-string v0, "D"

    goto/16 :goto_0

    :pswitch_4e
    const-string v0, "C"

    goto/16 :goto_0

    :pswitch_4f
    const-string v0, "B"

    goto/16 :goto_0

    :pswitch_50
    const-string v0, "A"

    goto/16 :goto_0

    :pswitch_51
    const-string v0, "Clear"

    goto/16 :goto_0

    :pswitch_52
    const-string v0, "Camera"

    goto/16 :goto_0

    :pswitch_53
    const-string v0, "Power"

    goto/16 :goto_0

    :pswitch_54
    const-string v0, "Volume Down"

    goto/16 :goto_0

    :pswitch_55
    const-string v0, "Volume Up"

    goto/16 :goto_0

    :pswitch_56
    const-string v0, "Center"

    goto/16 :goto_0

    :pswitch_57
    const-string v0, "Right"

    goto/16 :goto_0

    :pswitch_58
    const-string v0, "Left"

    goto/16 :goto_0

    :pswitch_59
    const-string v0, "Down"

    goto/16 :goto_0

    :pswitch_5a
    const-string v0, "Up"

    goto/16 :goto_0

    :pswitch_5b
    const-string v0, "#"

    goto/16 :goto_0

    :pswitch_5c
    const-string v0, "*"

    goto/16 :goto_0

    :pswitch_5d
    const-string v0, "9"

    goto/16 :goto_0

    :pswitch_5e
    const-string v0, "8"

    goto/16 :goto_0

    :pswitch_5f
    const-string v0, "7"

    goto/16 :goto_0

    :pswitch_60
    const-string v0, "6"

    goto/16 :goto_0

    :pswitch_61
    const-string v0, "5"

    goto/16 :goto_0

    :pswitch_62
    const-string v0, "4"

    goto/16 :goto_0

    :pswitch_63
    const-string v0, "3"

    goto/16 :goto_0

    :pswitch_64
    const-string v0, "2"

    goto/16 :goto_0

    :pswitch_65
    const-string v0, "1"

    goto/16 :goto_0

    :pswitch_66
    const-string v0, "0"

    goto/16 :goto_0

    :pswitch_67
    const-string v0, "End Call"

    goto/16 :goto_0

    :pswitch_68
    const-string v0, "Call"

    goto/16 :goto_0

    :pswitch_69
    const-string v0, "Back"

    goto/16 :goto_0

    :pswitch_6a
    const-string v0, "Home"

    goto/16 :goto_0

    :pswitch_6b
    const-string v0, "Soft Right"

    goto/16 :goto_0

    :pswitch_6c
    const-string v0, "Soft Left"

    goto/16 :goto_0

    :pswitch_6d
    const-string v0, "Unknown"

    goto/16 :goto_0

    :pswitch_6e
    const-string v0, "Insert"

    goto/16 :goto_0

    :pswitch_6f
    const-string v0, "End"

    goto/16 :goto_0

    :pswitch_70
    const-string v0, "Escape"

    goto/16 :goto_0

    :pswitch_71
    const-string v0, "R-Ctrl"

    goto :goto_0

    :pswitch_72
    const-string v0, "L-Ctrl"

    goto :goto_0

    :pswitch_73
    const-string v0, "Numpad 9"

    goto :goto_0

    :pswitch_74
    const-string v0, "Numpad 8"

    goto :goto_0

    :pswitch_75
    const-string v0, "Numpad 7"

    goto :goto_0

    :pswitch_76
    const-string v0, "Numpad 6"

    goto :goto_0

    :pswitch_77
    const-string v0, "Numpad 5"

    goto :goto_0

    :pswitch_78
    const-string v0, "Numpad 4"

    goto :goto_0

    :pswitch_79
    const-string v0, "Numpad 3"

    goto :goto_0

    :pswitch_7a
    const-string v0, "Numpad 2"

    goto :goto_0

    :pswitch_7b
    const-string v0, "Numpad 1"

    goto :goto_0

    :pswitch_7c
    const-string v0, "Numpad 0"

    goto :goto_0

    :pswitch_7d
    const-string v0, "F12"

    goto :goto_0

    :pswitch_7e
    const-string v0, "F11"

    goto :goto_0

    :pswitch_7f
    const-string v0, "F10"

    goto :goto_0

    :pswitch_80
    const-string v0, "F9"

    goto :goto_0

    :pswitch_81
    const-string v0, "F8"

    goto :goto_0

    :pswitch_82
    const-string v0, "F7"

    goto :goto_0

    :pswitch_83
    const-string v0, "F6"

    goto :goto_0

    :pswitch_84
    const-string v0, "F5"

    goto :goto_0

    :pswitch_85
    const-string v0, "F4"

    goto :goto_0

    :pswitch_86
    const-string v0, "F3"

    goto :goto_0

    :pswitch_87
    const-string v0, "F2"

    goto :goto_0

    :pswitch_88
    const-string v0, "F1"

    goto :goto_0

    :pswitch_89
    const-string v0, ":"

    goto :goto_0

    :cond_4
    const-string v0, "Forward Delete"

    :goto_0
    :pswitch_8a
    return-object v0

    .line 1
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keycode cannot be greater than 255, keycode: "

    invoke-static {v1, p0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keycode cannot be negative, keycode: "

    invoke-static {v1, p0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_8a
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x81
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x90
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf3
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
    .end packed-switch
.end method

.method public static isKeyBound(I)Z
    .locals 3

    const/4 v0, 0x0

    if-lez p0, :cond_2

    const/16 v1, 0xff

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-boolean v1, Lcom/watabou/input/KeyBindings;->acceptUnbound:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/watabou/input/KeyBindings;->bindings:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/watabou/input/KeyBindings;->hardBindings:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static setAllBindings(Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/watabou/input/GameAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/watabou/input/KeyBindings;->bindings:Ljava/util/LinkedHashMap;

    return-void
.end method
