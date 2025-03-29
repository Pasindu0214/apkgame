.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.source "Pushing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;
    }
.end annotation


# instance fields
.field public callback:Lcom/watabou/utils/Callback;

.field public from:I

.field public sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

.field public to:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    .line 3
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 4
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->from:I

    .line 5
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->to:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->callback:Lcom/watabou/utils/Callback;

    return-void
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;IILcom/watabou/utils/Callback;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    .line 8
    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->callback:Lcom/watabou/utils/Callback;

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    .line 5
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
