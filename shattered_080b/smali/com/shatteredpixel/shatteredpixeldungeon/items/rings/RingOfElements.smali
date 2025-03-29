.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;
.source "RingOfElements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements$Resistance;
    }
.end annotation


# static fields
.field public static final RESISTS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->RESISTS:Ljava/util/HashSet;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Chill;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Frost;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corrosion;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/ToxicGas;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->RESISTS:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->RESISTS:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;-><init>()V

    return-void
.end method

.method public static resist(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)F
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements$Resistance;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->getBuffedBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->RESISTS:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 3
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide v1, 0x3fe999999999999aL    # 0.8

    .line 4
    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->getBuffedBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I

    move-result p0

    int-to-double p0, p0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :cond_2
    return v2
.end method


# virtual methods
.method public buff()Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements$Resistance;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements$Resistance;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;)V

    return-object v0
.end method

.method public statsInfo()Ljava/lang/String;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isIdentified()Z

    move-result v0

    const-string v1, "#.##"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 2
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->soloBuffedBonus()I

    move-result v1

    int-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double v6, v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "stats"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 3
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "typical_stats"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
