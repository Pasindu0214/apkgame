.class public Lcom/shatteredpixel/shatteredpixeldungeon/plants/Icecap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;
.source "Icecap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/plants/Icecap$Seed;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->image:I

    return-void
.end method


# virtual methods
.method public activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v0, v1, :cond_0

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FrostImbue;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 3
    :cond_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    .line 4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    const/4 v0, 0x0

    .line 5
    :goto_0
    sget-object v1, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 6
    aget v1, v1, v0

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_1

    .line 7
    invoke-static {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;->affect(ILcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
