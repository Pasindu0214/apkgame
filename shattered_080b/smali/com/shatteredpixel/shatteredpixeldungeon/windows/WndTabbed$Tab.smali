.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;
.super Lcom/watabou/noosa/ui/Button;
.source "WndTabbed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tab"
.end annotation


# instance fields
.field public bg:Lcom/watabou/noosa/NinePatch;

.field public selected:Z

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;

    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->bg:Lcom/watabou/noosa/NinePatch;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 4

    .line 1
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v1, 0x3f333333    # 0.7f

    const-string v2, "snd_click.mp3"

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->onClick(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)V

    return-void
.end method

.method public select(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->selected:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->bg:Lcom/watabou/noosa/NinePatch;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->selected:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->TAB_SELECTED:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->TAB_UNSELECTED:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    :goto_0
    invoke-static {p1}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->bg:Lcom/watabou/noosa/NinePatch;

    .line 5
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->addToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->layout()V

    return-void
.end method
