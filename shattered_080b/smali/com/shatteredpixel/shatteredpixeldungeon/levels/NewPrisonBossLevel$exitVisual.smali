.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$exitVisual;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "NewPrisonBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "exitVisual"
.end annotation


# static fields
.field public static render:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9a

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$exitVisual;->render:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;-><init>()V

    const-string v0, "custom_tiles/prison_exit_new.png"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    const/16 v0, 0xe

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    const/16 v0, 0xb

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    return-void
.end method


# virtual methods
.method public create()Lcom/watabou/noosa/Tilemap;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x100

    .line 2
    invoke-virtual {p0, v1, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->mapSimpleImage(III)[I

    move-result-object v2

    .line 3
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$exitVisual;->render:[B

    aget-byte v3, v3, v1

    if-nez v3, :cond_0

    const/4 v3, -0x1

    aput v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    invoke-virtual {v0, v2, v1}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const/16 p1, 0xb

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    const/16 v0, 0xe

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    .line 5
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    return-void
.end method
