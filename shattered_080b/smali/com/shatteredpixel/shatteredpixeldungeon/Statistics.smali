.class public Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# static fields
.field public static amuletObtained:Z = false

.field public static ankhsUsed:I = 0x0

.field public static completedWithNoKilling:Z = false

.field public static deepestFloor:I = 0x0

.field public static duration:F = 0.0f

.field public static enemiesSlain:I = 0x0

.field public static foodEaten:I = 0x0

.field public static goldCollected:I = 0x0

.field public static piranhasKilled:I = 0x0

.field public static potionsCooked:I = 0x0

.field public static qualifiedForNoKilling:Z = false

.field public static sneakAttacks:I

.field public static spawnersAlive:I

.field public static thrownAssists:I

.field public static upgradesUsed:I


# direct methods
.method public static restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    const-string v0, "score"

    .line 1
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I

    const-string v0, "maxDepth"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    const-string v0, "enemiesSlain"

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    const-string v0, "foodEaten"

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    const-string v0, "potionsCooked"

    .line 5
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->potionsCooked:I

    const-string v0, "priranhas"

    .line 6
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->piranhasKilled:I

    const-string v0, "ankhsUsed"

    .line 7
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->ankhsUsed:I

    const-string v0, "upgradesUsed"

    .line 8
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->upgradesUsed:I

    const-string v0, "sneakAttacks"

    .line 9
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->sneakAttacks:I

    const-string v0, "thrownAssists"

    .line 10
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->thrownAssists:I

    const-string v0, "spawnersAlive"

    .line 11
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->spawnersAlive:I

    const-string v0, "duration"

    .line 12
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->duration:F

    const-string v0, "amuletObtained"

    .line 13
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    return-void
.end method

.method public static storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I

    const-string v1, "score"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    const-string v1, "maxDepth"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    const-string v1, "enemiesSlain"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    const-string v1, "foodEaten"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 5
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->potionsCooked:I

    const-string v1, "potionsCooked"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 6
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->piranhasKilled:I

    const-string v1, "priranhas"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 7
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->ankhsUsed:I

    const-string v1, "ankhsUsed"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 8
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->upgradesUsed:I

    const-string v1, "upgradesUsed"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 9
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->sneakAttacks:I

    const-string v1, "sneakAttacks"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 10
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->thrownAssists:I

    const-string v1, "thrownAssists"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 11
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->spawnersAlive:I

    const-string v1, "spawnersAlive"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 12
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->duration:F

    const-string v1, "duration"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 13
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    const-string v1, "amuletObtained"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method
