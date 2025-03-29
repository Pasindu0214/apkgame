.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;
.super Ljava/lang/Enum;
.source "Pasty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Holiday"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

.field public static final enum EASTER:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

.field public static final enum HWEEN:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

.field public static final enum NONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

.field public static final enum XMAS:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    const/4 v2, 0x1

    const-string v3, "EASTER"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->EASTER:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    const/4 v3, 0x2

    const-string v4, "HWEEN"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->HWEEN:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    const/4 v4, 0x3

    const-string v5, "XMAS"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->XMAS:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    .line 5
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    aput-object v6, v5, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->EASTER:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    aput-object v1, v5, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->HWEEN:Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty$Holiday;

    return-object v0
.end method
