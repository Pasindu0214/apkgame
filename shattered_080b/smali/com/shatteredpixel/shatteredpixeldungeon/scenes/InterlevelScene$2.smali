.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$2;
.super Lcom/watabou/noosa/Image;
.source "InterlevelScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 3
    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    .line 3
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;->FADE_IN:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    const v3, 0x3eaa7efa    # 0.333f

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 5
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->timeLeft:F

    .line 6
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->fadeTime:F

    sub-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 7
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/Visual;->aa:F

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;->FADE_OUT:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Phase;

    if-ne v1, v2, :cond_1

    .line 9
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->timeLeft:F

    sub-float/2addr v3, v0

    .line 10
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/Visual;->aa:F

    goto :goto_0

    .line 11
    :cond_1
    iput v4, p0, Lcom/watabou/noosa/Visual;->aa:F

    :goto_0
    return-void
.end method
