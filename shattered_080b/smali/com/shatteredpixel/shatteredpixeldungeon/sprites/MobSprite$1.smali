.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite$1;
.super Lcom/watabou/noosa/tweeners/AlphaTweener;
.source "MobSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;Lcom/watabou/noosa/Visual;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;

    invoke-direct {p0, p2, p3, p4}, Lcom/watabou/noosa/tweeners/AlphaTweener;-><init>(Lcom/watabou/noosa/Visual;FF)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Group;->erase(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
