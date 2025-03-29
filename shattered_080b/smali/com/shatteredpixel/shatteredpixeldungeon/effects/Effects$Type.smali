.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;
.super Ljava/lang/Enum;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

.field public static final enum CHAIN:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

.field public static final enum DEATH_RAY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

.field public static final enum EXCLAMATION:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

.field public static final enum HEALTH_RAY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

.field public static final enum LIGHTNING:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

.field public static final enum LIGHT_RAY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

.field public static final enum RIPPLE:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

.field public static final enum WOUND:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    const/4 v1, 0x0

    const-string v2, "RIPPLE"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->RIPPLE:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    const/4 v2, 0x1

    const-string v3, "LIGHTNING"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->LIGHTNING:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    const/4 v3, 0x2

    const-string v4, "WOUND"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->WOUND:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    const/4 v4, 0x3

    const-string v5, "EXCLAMATION"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->EXCLAMATION:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    const/4 v5, 0x4

    const-string v6, "CHAIN"

    invoke-direct {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->CHAIN:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    const/4 v6, 0x5

    const-string v7, "DEATH_RAY"

    invoke-direct {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->DEATH_RAY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    const/4 v7, 0x6

    const-string v8, "LIGHT_RAY"

    invoke-direct {v0, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->LIGHT_RAY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    const/4 v8, 0x7

    const-string v9, "HEALTH_RAY"

    invoke-direct {v0, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->HEALTH_RAY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    .line 9
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->RIPPLE:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    aput-object v10, v9, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->LIGHTNING:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    aput-object v1, v9, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->WOUND:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    aput-object v1, v9, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->EXCLAMATION:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    aput-object v1, v9, v4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->CHAIN:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    aput-object v1, v9, v5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->DEATH_RAY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    aput-object v1, v9, v6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->LIGHT_RAY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    return-object v0
.end method
