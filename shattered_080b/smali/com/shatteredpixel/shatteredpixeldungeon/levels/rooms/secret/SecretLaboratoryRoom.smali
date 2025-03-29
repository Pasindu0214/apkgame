.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;
.source "SecretLaboratoryRoom.java"


# static fields
.field public static potionChances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfMindVision;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfToxicGas;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHaste;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfPurity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 7

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v2

    const/16 v3, 0x1c

    .line 5
    invoke-static {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 6
    iget v3, v2, Lcom/watabou/utils/Point;->x:I

    .line 7
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 8
    iget v2, v2, Lcom/watabou/utils/Point;->y:I

    mul-int v4, v4, v2

    add-int/2addr v4, v3

    const/16 v2, 0x14

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    add-int/2addr v2, v1

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Alchemy;

    invoke-static {v4, v2, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 9
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    .line 10
    new-instance v2, Ljava/util/HashMap;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;->potionChances:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v4

    .line 12
    iget-object v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v5, v5, v4

    if-ne v5, v0, :cond_0

    iget-object v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v5, v4}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 13
    invoke-static {v2}, Lcom/watabou/utils/Random;->chances(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    const/4 v6, 0x0

    .line 14
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {p1, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
