.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.super Ljava/lang/Object;
.source "CustomTilemap.java"

# interfaces
.implements Lcom/watabou/utils/Bundlable;


# instance fields
.field public texture:Ljava/lang/Object;

.field public tileH:I

.field public tileW:I

.field public tileX:I

.field public tileY:I

.field public vis:Lcom/watabou/noosa/Tilemap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->vis:Lcom/watabou/noosa/Tilemap;

    return-void
.end method


# virtual methods
.method public create()Lcom/watabou/noosa/Tilemap;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->vis:Lcom/watabou/noosa/Tilemap;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->alive:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 2
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap$1;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    new-instance v2, Lcom/watabou/noosa/TextureFilm;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4, v4}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    invoke-direct {v0, p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;Ljava/lang/Object;Lcom/watabou/noosa/TextureFilm;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->vis:Lcom/watabou/noosa/Tilemap;

    .line 3
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    mul-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    mul-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    return-object v0
.end method

.method public desc(II)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public image(II)Lcom/watabou/noosa/Image;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->vis:Lcom/watabou/noosa/Tilemap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v2, v0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    mul-int v2, v2, p2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Tilemap;->needsRender(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Lcom/watabou/noosa/Image;

    iget-object v2, v0, Lcom/watabou/noosa/Tilemap;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 4
    invoke-direct {v1}, Lcom/watabou/noosa/Image;-><init>()V

    .line 5
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 6
    iget-object v2, v0, Lcom/watabou/noosa/Tilemap;->tileset:Lcom/watabou/noosa/TextureFilm;

    iget-object v3, v0, Lcom/watabou/noosa/Tilemap;->data:[I

    iget v0, v0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    mul-int v0, v0, p2

    add-int/2addr v0, p1

    aget p1, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    :goto_0
    return-object v1
.end method

.method public mapSimpleImage(III)[I
    .locals 6

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v0, v0, v1

    new-array v1, v0, [I

    .line 2
    div-int/lit8 p3, p3, 0x10

    const/4 v2, 0x0

    move v3, p1

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int v4, p3, p2

    add-int/2addr v4, v3

    .line 3
    aput v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    sub-int v4, v3, p1

    .line 4
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    if-ne v4, v5, :cond_0

    add-int/lit8 p2, p2, 0x1

    move v3, p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public name(II)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    const-string v0, "tileX"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    const-string v0, "tileY"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    const-string v0, "tileW"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    const-string v0, "tileH"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    return-void
.end method

.method public setRect(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 2
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 3
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    .line 4
    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    const-string v1, "tileX"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    const-string v1, "tileY"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    const-string v1, "tileW"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    const-string v1, "tileH"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
