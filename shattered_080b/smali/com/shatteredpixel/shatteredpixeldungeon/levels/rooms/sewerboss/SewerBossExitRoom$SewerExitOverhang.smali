.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom$SewerExitOverhang;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "SewerBossExitRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SewerExitOverhang"
.end annotation


# static fields
.field public static final layout:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom$SewerExitOverhang;->layout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x11
        0x12
        0x13
        -0x1
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;-><init>()V

    const-string v0, "custom_tiles/sewer_boss.png"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    const/4 v0, 0x2

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
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom$SewerExitOverhang;->layout:[I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-object v0
.end method

.method public image(II)Lcom/watabou/noosa/Image;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
