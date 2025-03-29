.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/ShockingBrew;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/Brew;
.source "ShockingBrew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/ShockingBrew$Recipe;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/Brew;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BREW_SHOCKING:I

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

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->splash(I)V

    .line 3
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_shatter.mp3"

    .line 4
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    const/4 p1, 0x0

    .line 6
    :goto_0
    sget-object v0, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v2, v0

    if-ge p1, v2, :cond_2

    .line 7
    aget v0, v0, p1

    const v2, 0x7fffffff

    if-ge v0, v2, :cond_1

    const/16 v0, 0x14

    .line 8
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;

    invoke-static {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v0, "snd_lightning.mp3"

    .line 10
    invoke-virtual {p1, v0, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method
