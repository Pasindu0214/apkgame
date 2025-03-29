.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Elastic;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
.source "Elastic.java"


# static fields
.field public static PINK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0xff00ff

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Elastic;->PINK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;-><init>()V

    return-void
.end method


# virtual methods
.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Elastic;->PINK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 18

    move-object/from16 v0, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->buffedLvl()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    .line 2
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_f

    move-object/from16 v1, p2

    .line 3
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    and-int/2addr v8, v8

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    and-int/lit8 v9, v9, 0x2

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_2

    const/4 v2, 0x1

    .line 6
    :cond_2
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 7
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 8
    rem-int v10, v1, v3

    .line 9
    rem-int v11, v4, v3

    .line 10
    div-int v12, v1, v3

    .line 11
    div-int v13, v4, v3

    sub-int/2addr v11, v10

    sub-int/2addr v13, v12

    const/4 v10, -0x1

    if-lez v11, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, -0x1

    :goto_2
    if-lez v13, :cond_4

    const/4 v10, 0x1

    .line 12
    :cond_4
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 13
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    mul-int v10, v10, v3

    if-le v11, v13, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    move/from16 v17, v13

    move v13, v11

    move/from16 v11, v17

    .line 14
    :goto_3
    div-int/lit8 v3, v11, 0x2

    move v14, v1

    .line 15
    :goto_4
    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v15

    if-eqz v15, :cond_c

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v14, v15, :cond_6

    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v15, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v0, v0, v14

    if-nez v0, :cond_6

    iget-object v0, v15, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v0, v0, v14

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 17
    invoke-static {v5, v0}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v6, :cond_6

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 19
    :cond_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_7

    .line 20
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v14, v0, :cond_7

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v0, v0, v14

    if-nez v0, :cond_9

    .line 21
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v14, v0, :cond_8

    if-eqz v9, :cond_8

    invoke-static {v14}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    if-ne v14, v4, :cond_a

    if-eqz v8, :cond_a

    :cond_9
    if-nez v6, :cond_a

    .line 22
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    :cond_a
    add-int/2addr v14, v12

    add-int/2addr v3, v13

    if-lt v3, v11, :cond_b

    sub-int/2addr v3, v11

    add-int/2addr v14, v10

    :cond_b
    move-object/from16 v0, p3

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_d

    .line 23
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    goto :goto_5

    .line 24
    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 25
    invoke-static {v5, v0}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    goto :goto_5

    .line 26
    :cond_e
    invoke-static {v1, v5, v1}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v6

    .line 27
    :goto_5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v5, v2}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x7

    invoke-direct {v0, v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    const/4 v1, 0x2

    move-object/from16 v3, p3

    .line 28
    invoke-static {v3, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave;->throwChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;IZ)V

    :cond_f
    return p4
.end method
