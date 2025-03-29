.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfAccuracy;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;
.source "RingOfAccuracy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfAccuracy$Accuracy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;-><init>()V

    return-void
.end method

.method public static accuracyMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfAccuracy$Accuracy;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->getBuffedBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3ff4ccccc0000000L    # 1.2999999523162842

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public buff()Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfAccuracy$Accuracy;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfAccuracy$Accuracy;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfAccuracy;)V

    return-object v0
.end method

.method public statsInfo()Ljava/lang/String;
    .locals 10

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

    const-wide v6, 0x3ff4ccccc0000000L    # 1.2999999523162842

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->soloBuffedBonus()I

    move-result v1

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

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

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "typical_stats"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
