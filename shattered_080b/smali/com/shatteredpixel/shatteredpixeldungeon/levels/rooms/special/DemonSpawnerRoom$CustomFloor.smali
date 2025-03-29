.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/DemonSpawnerRoom$CustomFloor;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "DemonSpawnerRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/DemonSpawnerRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFloor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;-><init>()V

    const-string v0, "custom_tiles/halls_special.png"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create()Lcom/watabou/noosa/Tilemap;
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v2, v2, v4

    add-int/2addr v2, v1

    .line 4
    iget-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 5
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v3, v3, v4

    new-array v4, v3, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    .line 6
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    rem-int v7, v5, v6

    if-nez v7, :cond_0

    .line 7
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    div-int v6, v5, v6

    add-int/2addr v6, v7

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v6, v6, v7

    add-int/2addr v2, v6

    .line 9
    :cond_0
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v6

    instance-of v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DemonSpawner;

    if-eqz v6, :cond_1

    add-int/lit8 v6, v5, -0x1

    const/16 v7, 0x25

    .line 10
    aput v7, v4, v6

    const/16 v6, 0x26

    .line 11
    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x27

    .line 12
    aput v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_1
    aget v6, v1, v2

    const/16 v7, 0x14

    if-ne v6, v7, :cond_3

    .line 14
    sget-boolean v6, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    if-eqz v6, :cond_2

    const/16 v6, 0x1f

    .line 15
    aput v6, v4, v5

    goto :goto_1

    :cond_2
    const/16 v6, 0x1b

    .line 16
    aput v6, v4, v5

    goto :goto_1

    :cond_3
    const/16 v6, 0x13

    .line 17
    aput v6, v4, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 18
    :cond_4
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    invoke-virtual {v0, v4, v1}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-object v0
.end method
