.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Spell;
.source "TargetedSpell.java"


# static fields
.field public static targeter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# instance fields
.field public collisionProperties:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;->targeter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Spell;-><init>()V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;->collisionProperties:I

    return-void
.end method

.method public static synthetic access$500()Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    return-object v0
.end method


# virtual methods
.method public abstract affectTarget(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
.end method

.method public fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2, v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    .line 4
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 p2, 0x3f800000    # 1.0f

    const-string v0, "snd_zap.mp3"

    .line 5
    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public onCast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;->targeter:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    return-void
.end method
