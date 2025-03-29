.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1;
.super Ljava/lang/Object;
.source "LloydsBeacon.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/Integer;)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/16 v4, 0x14

    const/4 v5, 0x2

    if-le v3, v4, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    sub-int/2addr v2, v3

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_2

    .line 6
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->teleportChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 8
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    move-object v5, v0

    goto/16 :goto_8

    .line 9
    :cond_2
    iget v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x6

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    and-int/lit8 v5, v5, 0x6

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v7, 0x6

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 12
    :goto_3
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 13
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 14
    rem-int v9, v1, v8

    .line 15
    rem-int v10, v2, v8

    .line 16
    div-int v11, v1, v8

    .line 17
    div-int v12, v2, v8

    sub-int/2addr v10, v9

    sub-int/2addr v12, v11

    const/4 v9, -0x1

    if-lez v10, :cond_6

    const/4 v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, -0x1

    :goto_4
    if-lez v12, :cond_7

    const/4 v9, 0x1

    .line 18
    :cond_7
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 19
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    mul-int v9, v9, v8

    if-le v10, v12, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v16, v11

    move v11, v9

    move/from16 v9, v16

    move/from16 v17, v12

    move v12, v10

    move/from16 v10, v17

    .line 20
    :goto_5
    div-int/lit8 v8, v10, 0x2

    const/4 v13, 0x0

    move v14, v1

    .line 21
    :goto_6
    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v15

    if-eqz v15, :cond_f

    if-eqz v7, :cond_9

    .line 22
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v14, v15, :cond_9

    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v15, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v0, v0, v14

    if-nez v0, :cond_9

    iget-object v0, v15, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v0, v0, v14

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 23
    invoke-static {v3, v0}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v13, :cond_9

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 25
    :cond_9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_a

    .line 26
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v14, v0, :cond_a

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v0, v0, v14

    if-nez v0, :cond_c

    .line 27
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v14, v0, :cond_b

    if-eqz v5, :cond_b

    invoke-static {v14}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    if-ne v14, v2, :cond_d

    if-eqz v6, :cond_d

    :cond_c
    if-nez v13, :cond_d

    .line 28
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v13, v0

    :cond_d
    add-int/2addr v14, v11

    add-int/2addr v8, v12

    if-lt v8, v10, :cond_e

    sub-int/2addr v8, v10

    add-int/2addr v14, v9

    :cond_e
    move-object/from16 v0, p0

    goto :goto_6

    :cond_f
    if-eqz v13, :cond_10

    .line 29
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    goto :goto_7

    .line 30
    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 31
    invoke-static {v3, v0}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/Integer;

    goto :goto_7

    .line 32
    :cond_11
    invoke-static {v1, v3, v1}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v13

    .line 33
    :goto_7
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v0, v1, :cond_12

    .line 35
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->teleportChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 36
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    move-object/from16 v5, p0

    goto :goto_8

    :cond_12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    sget-object v2, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v3, "snd_zap.mp3"

    .line 39
    invoke-virtual {v2, v3, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 40
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 41
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    .line 42
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v2, 0x0

    .line 43
    iput-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 44
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v2, v1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    .line 45
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1$1;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    const/4 v0, 0x6

    .line 46
    invoke-static {v2, v0, v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    :goto_8
    return-void
.end method

.method public prompt()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "prompt"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
