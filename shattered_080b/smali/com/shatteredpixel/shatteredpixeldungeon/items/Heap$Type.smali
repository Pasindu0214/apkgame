.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;
.super Ljava/lang/Enum;
.source "Heap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

.field public static final enum CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

.field public static final enum CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

.field public static final enum FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

.field public static final enum HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

.field public static final enum LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

.field public static final enum MIMIC:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

.field public static final enum REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

.field public static final enum SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

.field public static final enum TOMB:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/4 v1, 0x0

    const-string v2, "HEAP"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/4 v2, 0x1

    const-string v3, "FOR_SALE"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/4 v3, 0x2

    const-string v4, "CHEST"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/4 v4, 0x3

    const-string v5, "LOCKED_CHEST"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/4 v5, 0x4

    const-string v6, "CRYSTAL_CHEST"

    invoke-direct {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/4 v6, 0x5

    const-string v7, "TOMB"

    invoke-direct {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->TOMB:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/4 v7, 0x6

    const-string v8, "SKELETON"

    invoke-direct {v0, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/4 v8, 0x7

    const-string v9, "REMAINS"

    invoke-direct {v0, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/16 v9, 0x8

    const-string v10, "MIMIC"

    invoke-direct {v0, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->MIMIC:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 10
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    aput-object v11, v10, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    aput-object v1, v10, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    aput-object v1, v10, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    aput-object v1, v10, v4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    aput-object v1, v10, v5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->TOMB:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    aput-object v1, v10, v6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    aput-object v1, v10, v7

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    return-object v0
.end method
