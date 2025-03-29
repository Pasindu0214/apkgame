.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;
.super Ljava/lang/Enum;
.source "HeroClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

.field public static final enum HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

.field public static final enum MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

.field public static final enum ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

.field public static final enum WARRIOR:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;


# instance fields
.field public subClasses:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->BERSERKER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->GLADIATOR:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "WARRIOR"

    const-string v6, "warrior"

    invoke-direct {v0, v3, v4, v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;-><init>(Ljava/lang/String;ILjava/lang/String;[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->WARRIOR:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->BATTLEMAGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v3, v2, v4

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARLOCK:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v3, v2, v5

    const-string v3, "MAGE"

    const-string v6, "mage"

    invoke-direct {v0, v3, v5, v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;-><init>(Ljava/lang/String;ILjava/lang/String;[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->ASSASSIN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v3, v2, v4

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->FREERUNNER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v3, v2, v5

    const-string v3, "ROGUE"

    const-string v6, "rogue"

    invoke-direct {v0, v3, v1, v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;-><init>(Ljava/lang/String;ILjava/lang/String;[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->SNIPER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v3, v2, v4

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v6, "HUNTRESS"

    const-string v7, "huntress"

    invoke-direct {v0, v6, v3, v7, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;-><init>(Ljava/lang/String;ILjava/lang/String;[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 5
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->WARRIOR:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    aput-object v6, v2, v4

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    aput-object v4, v2, v5

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    aput-object v4, v2, v1

    aput-object v0, v2, v3

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->title:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->subClasses:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    return-void
.end method

.method public static restoreInBundle(Lcom/watabou/utils/Bundle;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;
    .locals 1

    const-string v0, "class"

    .line 1
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    return-object v0
.end method


# virtual methods
.method public isUnlocked()Z
    .locals 1

    const/4 v0, 0x1
    return v0
.end method


.method public spritesheet()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "warrior.png"

    return-object v0

    :cond_0
    const-string v0, "huntress.png"

    return-object v0

    :cond_1
    const-string v0, "rogue.png"

    return-object v0

    :cond_2
    const-string v0, "mage.png"

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->title:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
