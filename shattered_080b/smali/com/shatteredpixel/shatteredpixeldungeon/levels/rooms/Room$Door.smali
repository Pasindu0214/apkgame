.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;
.super Lcom/watabou/utils/Point;
.source "Room.java"

# interfaces
.implements Lcom/watabou/utils/Bundlable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Door"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;
    }
.end annotation


# instance fields
.field public type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/utils/Point;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->EMPTY:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->EMPTY:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    return-void
.end method

.method public constructor <init>(Lcom/watabou/utils/Point;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/watabou/utils/Point;-><init>(Lcom/watabou/utils/Point;)V

    .line 4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->EMPTY:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    return-void
.end method


# virtual methods
.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    const-string v0, "x"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/watabou/utils/Point;->x:I

    const-string v0, "y"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/watabou/utils/Point;->y:I

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    return-void
.end method

.method public set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    :cond_0
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/utils/Point;->x:I

    const-string v1, "x"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 2
    iget v0, p0, Lcom/watabou/utils/Point;->y:I

    const-string v1, "y"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->type:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
