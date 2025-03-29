.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CenterPieceVisuals;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "LastLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CenterPieceVisuals"
.end annotation


# static fields
.field public static final map:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa0

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CenterPieceVisuals;->map:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x8
        0x9
        0xa
        0xb
        0x13
        0xb
        0xc
        0xd
        0xe
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x10
        0x11
        0x12
        0x1f
        0x13
        0x1f
        0x14
        0x15
        0x16
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x18
        0x19
        0x1a
        0x13
        0x13
        0x13
        0x1c
        0x1d
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x18
        0x19
        0x1a
        0x13
        0x13
        0x13
        0x1c
        0x1d
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x18
        0x19
        0x1a
        0x13
        0x13
        0x13
        0x1c
        0x1d
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x18
        0x19
        0x22
        0x23
        0x23
        0x23
        0x22
        0x1d
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x28
        0x29
        0x24
        0x24
        0x24
        0x24
        0x24
        0x28
        0x29
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x30
        0x31
        0x24
        0x24
        0x24
        0x24
        0x24
        0x30
        0x31
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;-><init>()V

    const-string v0, "custom_tiles/halls_special.png"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    const/16 v0, 0x10

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    return-void
.end method


# virtual methods
.method public create()Lcom/watabou/noosa/Tilemap;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CenterPieceVisuals;->map:[I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-object v0
.end method
