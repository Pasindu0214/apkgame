.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$1;
.super Lcom/watabou/noosa/SkinnedBlock;
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
.field public final synthetic val$scrollSpeed:F


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;FFLjava/lang/Object;F)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$1;->val$scrollSpeed:F

    invoke-direct {p0, p2, p3, p4}, Lcom/watabou/noosa/SkinnedBlock;-><init>(FFLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->disable()V

    .line 2
    invoke-super {p0}, Lcom/watabou/noosa/Image;->draw()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->enable()V

    return-void
.end method

.method public script()Lcom/watabou/noosa/NoosaScript;
    .locals 1

    .line 1
    invoke-static {}, Lcom/watabou/noosa/NoosaScriptNoLighting;->get()Lcom/watabou/noosa/NoosaScriptNoLighting;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    sget v0, Lcom/watabou/noosa/Game;->elapsed:F

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$1;->val$scrollSpeed:F

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/watabou/noosa/SkinnedBlock;->offset(FF)V

    return-void
.end method
