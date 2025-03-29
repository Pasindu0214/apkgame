.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;
.source "Pasty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;
    }
.end annotation


# static fields
.field public static holiday:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;->holiday:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->XMAS:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;->holiday:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->HWEEN:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;->holiday:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->HWEEN:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;->holiday:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->XMAS:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;->holiday:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;->reset()V

    const/high16 v0, 0x43e10000    # 450.0f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->energy:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    return-void
.end method


# virtual methods
.method public info()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;->holiday:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "pasty_desc"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "cane_desc"

    .line 3
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "pie_desc"

    .line 4
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public reset()V
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->reset()V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;->holiday:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "cane"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 5
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->CANDY_CANE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "pie"

    .line 6
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 8
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->PUMPKIN_PIE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    goto :goto_0

    :cond_2
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "pasty"

    .line 9
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 11
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->PASTY:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    :goto_0
    return-void
.end method

.method public satisfy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->satisfy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;->holiday:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Recharging;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 4
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRecharging;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v2, v1, 0xa

    add-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 6
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v0, v2, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :goto_0
    return-void
.end method
