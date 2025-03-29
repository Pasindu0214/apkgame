.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/DeadEndLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.source "DeadEndLevel.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;-><init>()V

    const v0, 0x534f3e

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0xb9d661

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    return-void
.end method


# virtual methods
.method public build()Z
    .locals 11

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    const/4 v1, 0x2

    const/4 v2, 0x2

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    const/4 v5, 0x2

    :goto_1
    if-ge v5, v3, :cond_0

    .line 2
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 3
    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v7, v7, v2

    add-int/2addr v7, v5

    .line 4
    aput v4, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_2
    if-gt v2, v3, :cond_2

    .line 5
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 6
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int v7, v6, v2

    mul-int/lit8 v8, v6, 0x5

    add-int/2addr v8, v2

    mul-int v9, v6, v2

    add-int/2addr v9, v4

    mul-int v6, v6, v2

    add-int/2addr v6, v3

    const/16 v10, 0x1d

    .line 7
    aput v10, v5, v6

    aput v10, v5, v9

    aput v10, v5, v8

    aput v10, v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8
    :cond_2
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    add-int/2addr v2, v4

    .line 9
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 10
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v0, v1, v2

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    return v4
.end method

.method public createItems()V
    .locals 0

    return-void
.end method

.method public createMob()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createMobs()V
    .locals 0

    return-void
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public respawner()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_caves.png"

    return-object v0
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water4.png"

    return-object v0
.end method
