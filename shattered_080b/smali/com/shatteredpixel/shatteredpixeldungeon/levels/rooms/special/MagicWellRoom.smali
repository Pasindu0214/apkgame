.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MagicWellRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "MagicWellRoom.java"


# static fields
.field public static final WATERS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public overrideWater:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WaterOfAwareness;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WaterOfHealth;

    aput-object v2, v0, v1

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MagicWellRoom;->WATERS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MagicWellRoom;->overrideWater:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 5

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v1

    .line 4
    iget v2, v1, Lcom/watabou/utils/Point;->x:I

    iget v3, v1, Lcom/watabou/utils/Point;->y:I

    .line 5
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    .line 6
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v4, 0x18

    aput v4, v2, v3

    .line 7
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MagicWellRoom;->overrideWater:Ljava/lang/Class;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MagicWellRoom;->WATERS:[Ljava/lang/Class;

    .line 8
    invoke-static {v2}, Lcom/watabou/utils/Random;->element([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 9
    :goto_0
    iget v3, v1, Lcom/watabou/utils/Point;->x:I

    .line 10
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 11
    iget v1, v1, Lcom/watabou/utils/Point;->y:I

    mul-int v4, v4, v1

    add-int/2addr v4, v3

    invoke-static {v4, v0, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    .line 12
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    return-void
.end method
