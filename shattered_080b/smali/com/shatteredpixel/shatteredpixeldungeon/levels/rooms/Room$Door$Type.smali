.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;
.super Ljava/lang/Enum;
.source "Room.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

.field public static final enum BARRICADE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

.field public static final enum EMPTY:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

.field public static final enum HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

.field public static final enum LOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

.field public static final enum REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

.field public static final enum TUNNEL:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

.field public static final enum UNLOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    const/4 v1, 0x0

    const-string v2, "EMPTY"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->EMPTY:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    const/4 v2, 0x1

    const-string v3, "TUNNEL"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->TUNNEL:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    const/4 v3, 0x2

    const-string v4, "REGULAR"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    const/4 v4, 0x3

    const-string v5, "UNLOCKED"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->UNLOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    const/4 v5, 0x4

    const-string v6, "HIDDEN"

    invoke-direct {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    const/4 v6, 0x5

    const-string v7, "BARRICADE"

    invoke-direct {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->BARRICADE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    const/4 v7, 0x6

    const-string v8, "LOCKED"

    invoke-direct {v0, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->LOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    .line 2
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->EMPTY:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    aput-object v9, v8, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->TUNNEL:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    aput-object v1, v8, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    aput-object v1, v8, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->UNLOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    aput-object v1, v8, v4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    aput-object v1, v8, v5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->BARRICADE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    return-object v0
.end method
