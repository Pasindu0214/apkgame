.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;
.super Ljava/lang/Object;
.source "FloatingText.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->show(FFILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$color:I

.field public final synthetic val$key:I

.field public final synthetic val$text:Ljava/lang/String;

.field public final synthetic val$x:F

.field public final synthetic val$y:F


# direct methods
.method public constructor <init>(FFLjava/lang/String;II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;->val$x:F

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;->val$y:F

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;->val$text:Ljava/lang/String;

    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;->val$color:I

    iput p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->statuses:Lcom/watabou/noosa/Group;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;->val$x:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;->val$y:F

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;->val$text:Ljava/lang/String;

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;->val$color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->reset(FFLjava/lang/String;I)V

    .line 3
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;->val$key:I

    .line 4
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->push(Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;I)V

    :cond_1
    return-void
.end method
