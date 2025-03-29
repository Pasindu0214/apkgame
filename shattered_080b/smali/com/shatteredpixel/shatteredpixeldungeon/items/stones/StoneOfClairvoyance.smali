.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfClairvoyance;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;
.source "StoneOfClairvoyance.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STONE_CLAIRVOYANCE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public activate(I)V
    .locals 11

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    rem-int v1, p1, v0

    div-int/2addr p1, v0

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->rounding:[[I

    const/16 v2, 0xc

    aget-object v0, v0, v2

    add-int/lit8 v3, p1, -0xc

    const/4 v4, 0x0

    .line 5
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 6
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    add-int/lit8 v8, p1, 0xc

    .line 7
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gt v3, v6, :cond_4

    sub-int v6, p1, v3

    .line 8
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget v6, v0, v6

    sub-int v8, p1, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v6, v8, :cond_1

    sub-int v6, p1, v3

    .line 9
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget v6, v0, v6

    :cond_0
    sub-int v6, v1, v6

    goto :goto_2

    :cond_1
    const/16 v6, 0xc

    .line 10
    :goto_1
    aget v8, v0, v6

    sub-int v9, p1, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aget v9, v0, v9

    if-ge v8, v9, :cond_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 11
    :goto_2
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 12
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int/2addr v8, v7

    add-int v9, v1, v1

    sub-int/2addr v9, v6

    .line 13
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 14
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 15
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 16
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v9, v9, v3

    add-int/2addr v9, v6

    .line 17
    :goto_3
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 18
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v6, v6, v3

    add-int/2addr v6, v8

    if-gt v9, v6, :cond_3

    .line 19
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v6, v6, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CheckedCell;

    invoke-direct {v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CheckedCell;-><init>(I)V

    invoke-virtual {v6, v10}, Lcom/watabou/noosa/Group;->addToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v10, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    aput-boolean v7, v10, v9

    .line 21
    iget-object v10, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->secret:[Z

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_2

    .line 22
    invoke-virtual {v6, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discover(I)V

    .line 23
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v10, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_2

    .line 24
    iget-object v5, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v5, v5, v9

    invoke-static {v9, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->discoverTile(II)V

    .line 25
    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;->discover(I)V

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v5, :cond_5

    .line 26
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_secret.mp3"

    .line 27
    invoke-virtual {v0, v1, p1, p1, p1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 28
    :cond_5
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_teleport.mp3"

    .line 29
    invoke-virtual {v0, v1, p1, p1, p1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 30
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    return-void
.end method
