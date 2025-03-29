.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/CausticBrew;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/Brew;
.source "CausticBrew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/CausticBrew$Recipe;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/Brew;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BREW_CAUSTIC:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x50

    return v0
.end method

.method public shatter(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->splash(I)V

    .line 3
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_shatter.mp3"

    .line 4
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 6
    :goto_0
    sget-object v1, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 7
    aget v1, v1, v0

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_1

    const/4 v1, 0x5

    .line 8
    invoke-static {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(III)V

    .line 9
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    const/high16 v2, 0x41a00000    # 20.0f

    .line 11
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;->left:F

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
