.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$1;
.super Lcom/watabou/noosa/PointerArea;
.source "SurfaceScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$pet:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Pet;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;Lcom/watabou/noosa/Visual;Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Pet;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$1;->val$pet:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Pet;

    invoke-direct {p0, p2}, Lcom/watabou/noosa/PointerArea;-><init>(Lcom/watabou/noosa/Visual;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/watabou/input/PointerEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$1;->val$pet:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Pet;

    .line 2
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method
