.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;
.source "ChangesScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$changeInfos:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;Lcom/watabou/noosa/ui/Component;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$1;->val$changeInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;-><init>(Lcom/watabou/noosa/ui/Component;)V

    return-void
.end method


# virtual methods
.method public onClick(FF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$1;->val$changeInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;

    .line 2
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    .line 3
    invoke-virtual {v2, p1, p2}, Lcom/watabou/noosa/ui/Component;->inside(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 5
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow;

    new-instance v4, Lcom/watabou/noosa/Image;

    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;->icon:Lcom/watabou/noosa/Image;

    .line 6
    invoke-direct {v4}, Lcom/watabou/noosa/Image;-><init>()V

    .line 7
    invoke-virtual {v4, v5}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 8
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;->title:Ljava/lang/String;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;->message:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    :cond_3
    return-void
.end method
