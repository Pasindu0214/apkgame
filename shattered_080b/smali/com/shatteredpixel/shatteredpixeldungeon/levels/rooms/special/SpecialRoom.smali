.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;
.source "SpecialRoom.java"


# static fields
.field public static final ALL_SPEC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;",
            ">;>;"
        }
    .end annotation
.end field

.field public static floorSpecials:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;>;"
        }
    .end annotation
.end field

.field public static pitNeededDepth:I

.field public static runSpecials:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/WeakFloorRoom;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MagicWellRoom;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/CryptRoom;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/PoolRoom;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/GardenRoom;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/LibraryRoom;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ArmoryRoom;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/TreasuryRoom;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/TrapsRoom;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/StorageRoom;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/StatueRoom;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/VaultRoom;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/RunestoneRoom;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->ALL_SPEC:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->runSpecials:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 4
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->pitNeededDepth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;-><init>()V

    return-void
.end method


# virtual methods
.method public entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    return-object v0
.end method

.method public maxConnections(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public maxHeight()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public maxWidth()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public minHeight()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public minWidth()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "entrance"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    :cond_0
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v0

    const-string v1, "entrance"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    :cond_0
    return-void
.end method
