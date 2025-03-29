.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;
.super Lcom/watabou/noosa/Image;
.source "SpellSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;
    }
.end annotation


# static fields
.field public static all:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;",
            ">;"
        }
    .end annotation
.end field

.field public static film:Lcom/watabou/noosa/TextureFilm;


# instance fields
.field public duration:F

.field public passed:F

.field public phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;

.field public target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->all:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v0, "spell_icons.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->film:Lcom/watabou/noosa/TextureFilm;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v2, 0x10

    .line 5
    iget v3, v1, Lcom/watabou/gltextures/SmartTexture;->height:I

    invoke-direct {v0, v1, v2, v3}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 6
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->film:Lcom/watabou/noosa/TextureFilm;

    :cond_0
    return-void
.end method

.method public static show(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->all:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->kill()V

    .line 4
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->spells:Lcom/watabou/noosa/Group;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;

    .line 5
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->film:Lcom/watabou/noosa/TextureFilm;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 7
    iget-object p1, v0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v3, v2

    .line 8
    iput v1, p1, Lcom/watabou/utils/PointF;->x:F

    .line 9
    iput v3, p1, Lcom/watabou/utils/PointF;->y:F

    .line 10
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;->FADE_IN:Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;

    iput-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;

    const p1, 0x3e4ccccd    # 0.2f

    .line 11
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->duration:F

    const/4 p1, 0x0

    .line 12
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->passed:F

    .line 13
    iput-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 14
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->all:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public kill()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->all:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, 0x41000000    # 8.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v1, 0x41800000    # 16.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->passed:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->duration:F

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_0

    .line 7
    :cond_2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->passed:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->duration:F

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 8
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->passed:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->duration:F

    div-float/2addr v2, v3

    .line 9
    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    .line 11
    :goto_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->passed:F

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->passed:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->duration:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->kill()V

    goto :goto_1

    .line 14
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;->FADE_OUT:Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;

    const v0, 0x3ecccccd    # 0.4f

    .line 15
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->duration:F

    goto :goto_1

    .line 16
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;->STATIC:Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite$Phase;

    const v0, 0x3f4ccccd    # 0.8f

    .line 17
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->duration:F

    :goto_1
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->passed:F

    :cond_6
    return-void
.end method
