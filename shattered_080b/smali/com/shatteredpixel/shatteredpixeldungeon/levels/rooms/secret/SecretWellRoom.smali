.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretWellRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;
.source "SecretWellRoom.java"


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

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretWellRoom;->WATERS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public canConnect(Lcom/watabou/utils/Point;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(Lcom/watabou/utils/Point;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/watabou/utils/Point;->x:I

    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v2, v1

    if-le v0, v2, :cond_0

    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_2

    :cond_0
    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    iget v0, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 10

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/watabou/utils/Point;->x:I

    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    if-ne v1, v2, :cond_0

    .line 4
    new-instance v1, Lcom/watabou/utils/Point;

    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v2, v2, -0x2

    iget v3, v0, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v1, v2, v3}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_1

    .line 5
    :cond_0
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v1, v3, :cond_1

    .line 6
    new-instance v1, Lcom/watabou/utils/Point;

    add-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v1, v2, v3}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_1

    .line 7
    :cond_1
    iget v2, v0, Lcom/watabou/utils/Point;->y:I

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v2, v3, :cond_2

    .line 8
    new-instance v2, Lcom/watabou/utils/Point;

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v2, v1, v3}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, Lcom/watabou/utils/Point;

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/watabou/utils/Point;-><init>(II)V

    :goto_0
    move-object v1, v2

    .line 10
    :goto_1
    iget v2, v1, Lcom/watabou/utils/Point;->x:I

    const/4 v3, 0x1

    add-int/lit8 v5, v2, -0x1

    iget v2, v1, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 11
    invoke-static {p1, v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    const/16 v0, 0x18

    .line 12
    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretWellRoom;->WATERS:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/watabou/utils/Random;->element([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 14
    iget v2, v1, Lcom/watabou/utils/Point;->x:I

    .line 15
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 16
    iget v1, v1, Lcom/watabou/utils/Point;->y:I

    mul-int v4, v4, v1

    add-int/2addr v4, v2

    invoke-static {v4, v3, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    .line 17
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    return-void
.end method
