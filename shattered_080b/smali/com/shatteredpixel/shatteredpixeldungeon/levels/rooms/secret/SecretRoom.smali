.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "SecretRoom.java"


# static fields
.field public static final ALL_SECRETS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;",
            ">;>;"
        }
    .end annotation
.end field

.field public static baseRegionSecrets:[F

.field public static regionSecretsThisRun:[I

.field public static runSecrets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretGardenRoom;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLaboratoryRoom;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLibraryRoom;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretLarderRoom;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretWellRoom;

    aput-object v3, v1, v2

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRunestoneRoom;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretArtilleryRoom;

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretChestChasmRoom;

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretHoneypotRoom;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretHoardRoom;

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretMazeRoom;

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretSummoningRoom;

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->ALL_SECRETS:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->runSecrets:Ljava/util/ArrayList;

    new-array v0, v3, [F

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->baseRegionSecrets:[F

    new-array v0, v3, [I

    .line 4
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->regionSecretsThisRun:[I

    return-void

    :array_0
    .array-data 4
        0x3fb33333    # 1.4f
        0x3fe66666    # 1.8f
        0x400ccccd    # 2.2f
        0x40266666    # 2.6f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method

.method public static initForRun()V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->baseRegionSecrets:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->selectedClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 4
    aget v2, v0, v1

    const v4, 0x3f19999a    # 0.6f

    add-float/2addr v2, v4

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    :goto_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->regionSecretsThisRun:[I

    array-length v2, v1

    if-ge v3, v2, :cond_2

    .line 6
    aget v2, v0, v3

    float-to-int v2, v2

    aput v2, v1, v3

    .line 7
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v1

    aget v2, v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v2, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->regionSecretsThisRun:[I

    aget v2, v1, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->ALL_SECRETS:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->runSecrets:Ljava/util/ArrayList;

    .line 10
    invoke-static {v0}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method public static secretsForFloor(I)I
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    div-int/lit8 v0, p0, 0x5

    .line 2
    rem-int/lit8 p0, p0, 0x5

    rsub-int/lit8 p0, p0, 0x5

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->regionSecretsThisRun:[I

    aget p0, p0, v0

    int-to-float p0, p0

    goto :goto_1

    .line 4
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->regionSecretsThisRun:[I

    aget v1, v1, v0

    int-to-float v1, v1

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 5
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result p0

    const/high16 v2, 0x3f800000    # 1.0f

    rem-float v2, v1, v2

    cmpg-float p0, p0, v2

    if-gez p0, :cond_2

    float-to-double v1, v1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    goto :goto_0

    :cond_2
    float-to-double v1, v1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    :goto_0
    double-to-float p0, v1

    .line 8
    :goto_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->regionSecretsThisRun:[I

    aget v2, v1, v0

    float-to-int p0, p0

    sub-int/2addr v2, p0

    aput v2, v1, v0

    return p0
.end method
