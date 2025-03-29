.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;
.super Ljava/lang/Enum;
.source "HeroSubClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public static final enum ASSASSIN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public static final enum BATTLEMAGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public static final enum BERSERKER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public static final enum FREERUNNER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public static final enum GLADIATOR:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public static final enum NONE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public static final enum SNIPER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public static final enum WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public static final enum WARLOCK:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;


# instance fields
.field public title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/4 v2, 0x1

    const-string v3, "GLADIATOR"

    const-string v4, "gladiator"

    invoke-direct {v0, v3, v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->GLADIATOR:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/4 v3, 0x2

    const-string v4, "BERSERKER"

    const-string v5, "berserker"

    invoke-direct {v0, v4, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->BERSERKER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/4 v4, 0x3

    const-string v5, "WARLOCK"

    const-string v6, "warlock"

    invoke-direct {v0, v5, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARLOCK:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/4 v5, 0x4

    const-string v6, "BATTLEMAGE"

    const-string v7, "battlemage"

    invoke-direct {v0, v6, v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->BATTLEMAGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/4 v6, 0x5

    const-string v7, "ASSASSIN"

    const-string v8, "assassin"

    invoke-direct {v0, v7, v6, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->ASSASSIN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/4 v7, 0x6

    const-string v8, "FREERUNNER"

    const-string v9, "freerunner"

    invoke-direct {v0, v8, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->FREERUNNER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/4 v8, 0x7

    const-string v9, "SNIPER"

    const-string v10, "sniper"

    invoke-direct {v0, v9, v8, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->SNIPER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/16 v9, 0x8

    const-string v10, "WARDEN"

    const-string v11, "warden"

    invoke-direct {v0, v10, v9, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 10
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v11, v10, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->GLADIATOR:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v1, v10, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->BERSERKER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v1, v10, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARLOCK:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v1, v10, v4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->BATTLEMAGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v1, v10, v5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->ASSASSIN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v1, v10, v6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->FREERUNNER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v1, v10, v7

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->SNIPER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->title:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    return-object v0
.end method


# virtual methods
.method public desc()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->title:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
