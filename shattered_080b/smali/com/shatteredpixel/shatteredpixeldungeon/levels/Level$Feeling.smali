.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;
.super Ljava/lang/Enum;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feeling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

.field public static final enum CHASM:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

.field public static final enum DARK:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

.field public static final enum GRASS:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

.field public static final enum NONE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

.field public static final enum WATER:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    const/4 v2, 0x1

    const-string v3, "CHASM"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->CHASM:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    const/4 v3, 0x2

    const-string v4, "WATER"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->WATER:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    const/4 v4, 0x3

    const-string v5, "GRASS"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->GRASS:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    const/4 v5, 0x4

    const-string v6, "DARK"

    invoke-direct {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->DARK:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    .line 6
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    aput-object v7, v6, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->CHASM:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    aput-object v1, v6, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->WATER:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    aput-object v1, v6, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->GRASS:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    return-object v0
.end method
