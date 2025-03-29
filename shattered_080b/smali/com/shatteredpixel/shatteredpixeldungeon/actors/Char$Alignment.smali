.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;
.super Ljava/lang/Enum;
.source "Char.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

.field public static final enum ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

.field public static final enum ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

.field public static final enum NEUTRAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    const/4 v1, 0x0

    const-string v2, "ENEMY"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    const/4 v2, 0x1

    const-string v3, "NEUTRAL"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->NEUTRAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    const/4 v3, 0x2

    const-string v4, "ALLY"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    .line 4
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    aput-object v5, v4, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->NEUTRAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    return-object v0
.end method
