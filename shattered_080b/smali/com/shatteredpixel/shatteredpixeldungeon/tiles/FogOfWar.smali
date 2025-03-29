.class public Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;
.super Lcom/watabou/noosa/Image;
.source "FogOfWar.java"


# static fields
.field public static final FOG_COLORS:[[I


# instance fields
.field public brightness:I

.field public height2:I

.field public mapHeight:I

.field public mapLength:I

.field public mapWidth:I

.field public mapped:[Z

.field public pHeight:I

.field public pWidth:I

.field public volatile toUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/watabou/utils/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public volatile updating:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/watabou/utils/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public visible:[Z

.field public visited:[Z

.field public width2:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 1
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x34000000    # -3.3554432E7f
        -0x67000000
        0x55000000
    .end array-data

    :array_2
    .array-data 4
        -0x33bbddef    # -5.1415108E7f
        -0x6699cce7
        0x55884422
    .end array-data

    :array_3
    .array-data 4
        -0x1000000
        -0x1000000
        -0x1000000
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    .line 3
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapHeight:I

    mul-int v0, p2, p1

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapLength:I

    mul-int/lit8 v0, p1, 0x2

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->pWidth:I

    mul-int/lit8 v0, p2, 0x2

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->pHeight:I

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->width2:I

    .line 8
    :goto_0
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->width2:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->pWidth:I

    if-ge v1, v2, :cond_0

    shl-int/lit8 v1, v1, 0x1

    .line 9
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->width2:I

    goto :goto_0

    .line 10
    :cond_0
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->height2:I

    .line 11
    :goto_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->height2:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->pHeight:I

    if-ge v0, v1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    .line 12
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->height2:I

    goto :goto_1

    .line 13
    :cond_1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->width2:I

    int-to-float v2, v1

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v2, v2, v3

    iput v2, p0, Lcom/watabou/noosa/Visual;->width:F

    int-to-float v2, v0

    mul-float v2, v2, v3

    .line 14
    iput v2, p0, Lcom/watabou/noosa/Visual;->height:F

    .line 15
    new-instance v2, Lcom/watabou/gltextures/BufferTexture;

    invoke-direct {v2, v1, v0}, Lcom/watabou/gltextures/BufferTexture;-><init>(II)V

    .line 16
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;

    invoke-static {v0, v2}, Lcom/watabou/gltextures/TextureCache;->add(Ljava/lang/Object;Lcom/watabou/gltextures/SmartTexture;)V

    .line 17
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 19
    iput v3, v0, Lcom/watabou/utils/PointF;->x:F

    .line 20
    iput v3, v0, Lcom/watabou/utils/PointF;->y:F

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->toUpdate:Ljava/util/ArrayList;

    .line 22
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->toUpdate:Ljava/util/ArrayList;

    new-instance v1, Lcom/watabou/utils/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Image;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    if-eqz v0, :cond_0

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;

    invoke-static {v0}, Lcom/watabou/gltextures/TextureCache;->remove(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public draw()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->toUpdate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    .line 3
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->visible:[Z

    .line 4
    iput-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->visited:[Z

    .line 5
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapped:[Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "brightness"

    .line 6
    invoke-static {v7, v5, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;III)I

    move-result v4

    add-int/2addr v4, v6

    .line 7
    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->moveToUpdating()V

    .line 9
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updating:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 10
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updating:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/watabou/utils/Rect;

    .line 11
    invoke-virtual {v4}, Lcom/watabou/utils/Rect;->height()I

    move-result v7

    iget v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapHeight:I

    if-ne v7, v8, :cond_0

    invoke-virtual {v4}, Lcom/watabou/utils/Rect;->width()I

    move-result v4

    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    if-ne v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 12
    :goto_0
    iget-object v7, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    check-cast v7, Lcom/watabou/gltextures/BufferTexture;

    .line 13
    iget-object v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updating:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/watabou/utils/Rect;

    .line 14
    iget v10, v9, Lcom/watabou/utils/Rect;->top:I

    :goto_1
    iget v11, v9, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v10, v11, :cond_1

    .line 15
    iget v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    mul-int v11, v11, v10

    iget v12, v9, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v11, v12

    .line 16
    :goto_2
    iget v13, v9, Lcom/watabou/utils/Rect;->right:I

    if-gt v12, v13, :cond_f

    .line 17
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 18
    iget v14, v13, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-lt v11, v14, :cond_2

    goto/16 :goto_6

    .line 19
    :cond_2
    iget-object v13, v13, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discoverable:[Z

    aget-boolean v13, v13, v11

    const/4 v14, 0x3

    if-eqz v13, :cond_d

    aget-boolean v13, v2, v11

    if-nez v13, :cond_3

    aget-boolean v13, v3, v11

    if-nez v13, :cond_3

    aget-boolean v13, v1, v11

    if-nez v13, :cond_3

    goto/16 :goto_4

    .line 20
    :cond_3
    invoke-virtual {v0, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->wall(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 21
    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    add-int/2addr v13, v11

    iget v15, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapLength:I

    if-lt v13, v15, :cond_4

    .line 22
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    aget-object v13, v13, v14

    iget v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v13, v13, v14

    invoke-virtual {v0, v7, v12, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillCell(Lcom/watabou/gltextures/BufferTexture;III)V

    goto/16 :goto_5

    .line 23
    :cond_4
    invoke-virtual {v0, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->wall(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 24
    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    rem-int v13, v11, v13

    if-eqz v13, :cond_7

    add-int/lit8 v13, v11, -0x1

    .line 25
    invoke-virtual {v0, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->wall(I)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 26
    iget v15, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    add-int/2addr v15, v11

    sub-int/2addr v15, v6

    invoke-virtual {v0, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->wall(I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 27
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    aget-object v13, v13, v14

    iget v15, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v13, v13, v15

    invoke-virtual {v0, v7, v12, v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillLeft(Lcom/watabou/gltextures/BufferTexture;III)V

    goto :goto_3

    .line 28
    :cond_5
    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    invoke-virtual {v0, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v5

    iget v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    add-int/2addr v14, v11

    sub-int/2addr v14, v6

    invoke-virtual {v0, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v14

    invoke-virtual {v0, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget-object v5, v15, v5

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v5, v5, v13

    invoke-virtual {v0, v7, v12, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillLeft(Lcom/watabou/gltextures/BufferTexture;III)V

    goto :goto_3

    .line 29
    :cond_6
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    invoke-virtual {v0, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v14

    invoke-virtual {v0, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    aget-object v5, v5, v13

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v5, v5, v13

    invoke-virtual {v0, v7, v12, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillLeft(Lcom/watabou/gltextures/BufferTexture;III)V

    goto :goto_3

    .line 30
    :cond_7
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    const/4 v13, 0x3

    aget-object v5, v5, v13

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v5, v5, v13

    invoke-virtual {v0, v7, v12, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillLeft(Lcom/watabou/gltextures/BufferTexture;III)V

    :goto_3
    add-int/lit8 v5, v11, 0x1

    .line 31
    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    rem-int v13, v5, v13

    if-eqz v13, :cond_a

    .line 32
    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->wall(I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 33
    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    add-int/2addr v13, v11

    add-int/2addr v13, v6

    invoke-virtual {v0, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->wall(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 34
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    const/4 v13, 0x3

    aget-object v5, v5, v13

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v5, v5, v13

    invoke-virtual {v0, v7, v12, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillRight(Lcom/watabou/gltextures/BufferTexture;III)V

    goto/16 :goto_5

    .line 35
    :cond_8
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    invoke-virtual {v0, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v14

    iget v15, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    add-int/2addr v15, v11

    add-int/2addr v15, v6

    invoke-virtual {v0, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v15

    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget-object v5, v13, v5

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v5, v5, v13

    invoke-virtual {v0, v7, v12, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillRight(Lcom/watabou/gltextures/BufferTexture;III)V

    goto :goto_5

    .line 36
    :cond_9
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    invoke-virtual {v0, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v14

    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v5

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget-object v5, v13, v5

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v5, v5, v13

    invoke-virtual {v0, v7, v12, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillRight(Lcom/watabou/gltextures/BufferTexture;III)V

    goto :goto_5

    .line 37
    :cond_a
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    const/4 v13, 0x3

    aget-object v5, v5, v13

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v5, v5, v13

    invoke-virtual {v0, v7, v12, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillRight(Lcom/watabou/gltextures/BufferTexture;III)V

    goto :goto_5

    .line 38
    :cond_b
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    invoke-virtual {v0, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v13

    iget v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    add-int/2addr v14, v11

    invoke-virtual {v0, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    aget-object v5, v5, v13

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v5, v5, v13

    invoke-virtual {v0, v7, v12, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillCell(Lcom/watabou/gltextures/BufferTexture;III)V

    goto :goto_5

    .line 39
    :cond_c
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    invoke-virtual {v0, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->getCellFog(I)I

    move-result v13

    aget-object v5, v5, v13

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v5, v5, v13

    invoke-virtual {v0, v7, v12, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillCell(Lcom/watabou/gltextures/BufferTexture;III)V

    goto :goto_5

    :cond_d
    :goto_4
    if-eqz v4, :cond_e

    .line 40
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->FOG_COLORS:[[I

    const/4 v13, 0x3

    aget-object v5, v5, v13

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->brightness:I

    aget v5, v5, v13

    invoke-virtual {v0, v7, v12, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->fillCell(Lcom/watabou/gltextures/BufferTexture;III)V

    :cond_e
    :goto_5
    add-int/lit8 v11, v11, 0x1

    :goto_6
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_f
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 41
    :cond_10
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updating:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_12

    if-nez v4, :cond_12

    .line 42
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updating:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Rect;

    iget v1, v1, Lcom/watabou/utils/Rect;->top:I

    mul-int/lit8 v11, v1, 0x2

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updating:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Rect;

    iget v1, v1, Lcom/watabou/utils/Rect;->bottom:I

    mul-int/lit8 v1, v1, 0x2

    .line 43
    invoke-virtual {v7}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    const/16 v2, 0x2601

    .line 44
    invoke-virtual {v7, v2, v2}, Lcom/watabou/gltextures/SmartTexture;->filter(II)V

    const v2, 0x812f

    .line 45
    invoke-virtual {v7, v2, v2}, Lcom/watabou/gltextures/SmartTexture;->wrap(II)V

    .line 46
    iget-object v2, v7, Lcom/watabou/gltextures/BufferTexture;->pixels:Ljava/nio/IntBuffer;

    iget v3, v7, Lcom/watabou/gltextures/SmartTexture;->width:I

    mul-int v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    sget-object v2, La/b/a/e;->g:La/b/a/o/d;

    iget v12, v7, Lcom/watabou/gltextures/SmartTexture;->width:I

    sub-int v13, v1, v11

    iget-object v1, v7, Lcom/watabou/gltextures/BufferTexture;->pixels:Ljava/nio/IntBuffer;

    check-cast v2, La/b/a/m/a/j;

    if-eqz v2, :cond_11

    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v14, 0x1908

    const/16 v15, 0x1401

    move-object/from16 v16, v1

    .line 48
    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_7

    :cond_11
    const/4 v1, 0x0

    throw v1

    .line 49
    :cond_12
    invoke-virtual {v7}, Lcom/watabou/gltextures/BufferTexture;->update()V

    .line 50
    :cond_13
    :goto_7
    invoke-super/range {p0 .. p0}, Lcom/watabou/noosa/Image;->draw()V

    return-void
.end method

.method public final fillCell(Lcom/watabou/gltextures/BufferTexture;III)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1
    iget-object v3, p1, Lcom/watabou/gltextures/BufferTexture;->pixels:Ljava/nio/IntBuffer;

    mul-int/lit8 v4, p3, 0x2

    add-int/2addr v4, v1

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->width2:I

    mul-int v4, v4, v5

    mul-int/lit8 v5, p2, 0x2

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 2
    iget-object v4, p1, Lcom/watabou/gltextures/BufferTexture;->pixels:Ljava/nio/IntBuffer;

    invoke-virtual {v4, p4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final fillLeft(Lcom/watabou/gltextures/BufferTexture;III)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1
    iget-object v3, p1, Lcom/watabou/gltextures/BufferTexture;->pixels:Ljava/nio/IntBuffer;

    mul-int/lit8 v4, p3, 0x2

    add-int/2addr v4, v1

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->width2:I

    mul-int v4, v4, v5

    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 2
    iget-object v3, p1, Lcom/watabou/gltextures/BufferTexture;->pixels:Ljava/nio/IntBuffer;

    invoke-virtual {v3, p4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final fillRight(Lcom/watabou/gltextures/BufferTexture;III)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1
    iget-object v2, p1, Lcom/watabou/gltextures/BufferTexture;->pixels:Ljava/nio/IntBuffer;

    mul-int/lit8 v3, p3, 0x2

    add-int/2addr v3, v0

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->width2:I

    mul-int v3, v3, v4

    mul-int/lit8 v4, p2, 0x2

    add-int/2addr v4, v3

    const/4 v3, 0x1

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    if-ge v3, v1, :cond_0

    .line 2
    iget-object v2, p1, Lcom/watabou/gltextures/BufferTexture;->pixels:Ljava/nio/IntBuffer;

    invoke-virtual {v2, p4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getCellFog(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->visible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->visited:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapped:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1
.end method

.method public final declared-synchronized moveToUpdating()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->toUpdate:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updating:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->toUpdate:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public script()Lcom/watabou/noosa/NoosaScript;
    .locals 1

    .line 1
    invoke-static {}, Lcom/watabou/noosa/NoosaScriptNoLighting;->get()Lcom/watabou/noosa/NoosaScriptNoLighting;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updateFog()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->toUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->toUpdate:Ljava/util/ArrayList;

    new-instance v1, Lcom/watabou/utils/Rect;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapHeight:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateFog(II)V
    .locals 6

    monitor-enter p0

    .line 11
    :try_start_0
    new-instance v0, Lcom/watabou/utils/Rect;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    rem-int v1, p1, v1

    sub-int/2addr v1, p2

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    div-int v2, p1, v2

    sub-int/2addr v2, p2

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    rem-int v3, p1, v3

    sub-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, p2, 0x2

    add-int/2addr v3, v4

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    div-int/2addr p1, v5

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    .line 12
    iget p1, v0, Lcom/watabou/utils/Rect;->left:I

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/watabou/utils/Rect;->left:I

    .line 13
    iget p1, v0, Lcom/watabou/utils/Rect;->top:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/watabou/utils/Rect;->top:I

    .line 14
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapWidth:I

    iget p2, v0, Lcom/watabou/utils/Rect;->right:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lcom/watabou/utils/Rect;->right:I

    .line 15
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->mapHeight:I

    iget p2, v0, Lcom/watabou/utils/Rect;->bottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lcom/watabou/utils/Rect;->bottom:I

    .line 16
    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updateFog(Lcom/watabou/utils/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateFog(Lcom/watabou/utils/Rect;)V
    .locals 5

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->toUpdate:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/watabou/utils/Rect;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/watabou/utils/Rect;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 5
    invoke-virtual {v3, p1}, Lcom/watabou/utils/Rect;->intersect(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/watabou/utils/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->toUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->toUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Lcom/watabou/utils/Rect;->union(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->toUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized updateFogArea(IIII)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/watabou/utils/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updateFog(Lcom/watabou/utils/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final wall(I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget p1, v0, p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p1

    return p1
.end method
