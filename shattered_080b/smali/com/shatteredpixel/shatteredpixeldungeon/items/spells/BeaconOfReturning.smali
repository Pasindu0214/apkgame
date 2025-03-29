.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Spell;
.source "BeaconOfReturning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$Recipe;
    }
.end annotation


# static fields
.field public static final WHITE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# instance fields
.field public returnDepth:I

.field public returnPos:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0xffffff

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->WHITE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Spell;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RETURN_BEACON:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    return-void
.end method


# virtual methods
.method public desc()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "\n\n"

    .line 3
    invoke-static {v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;

    const-string v3, "desc_set"

    invoke-static {v2, v3, v1, v0}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    return-void
.end method

.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->WHITE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onCast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->setBeacon(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$1;

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "wnd_body"

    .line 6
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "wnd_set"

    .line 7
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v3, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "wnd_return"

    .line 8
    invoke-static {v0, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    move-object v3, v1

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 9
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    :goto_0
    return-void
.end method

.method public onThrow(I)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    return-void
.end method

.method public price()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    int-to-float v0, v0

    const/high16 v1, 0x41900000    # 18.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "depth"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    const-string v0, "pos"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnPos:I

    return-void
.end method

.method public final setBeacon(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 4

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnPos:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "set"

    .line 5
    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 7
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_beacon.mp3"

    .line 8
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    const-string v1, "depth"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnPos:I

    const-string v1, "pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
