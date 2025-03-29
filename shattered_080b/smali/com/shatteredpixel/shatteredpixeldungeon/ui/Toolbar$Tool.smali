.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;
.super Lcom/watabou/noosa/ui/Button;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tool"
.end annotation


# instance fields
.field public base:Lcom/watabou/noosa/Image;


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/ui/Button;->hotArea:Lcom/watabou/noosa/PointerArea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/watabou/noosa/PointerArea;->blockWhenInactive:Z

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->base:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/watabou/noosa/Image;->frame(IIII)V

    int-to-float p1, p3

    .line 4
    iput p1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    int-to-float p1, p4

    .line 5
    iput p1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 3
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v1, "toolbar.png"

    .line 4
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->base:Lcom/watabou/noosa/Image;

    .line 6
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public enable(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->base:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->base:Lcom/watabou/noosa/Image;

    const v1, 0x7b8073

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/Visual;->tint(IF)V

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    :cond_1
    return-void
.end method

.method public frame(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->base:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/watabou/noosa/Image;->frame(IIII)V

    int-to-float p1, p3

    .line 2
    iput p1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    int-to-float p1, p4

    .line 3
    iput p1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method

.method public layout()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->base:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public onPointerDown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->base:Lcom/watabou/noosa/Image;

    const v1, 0x3fb33333    # 1.4f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    return-void
.end method

.method public onPointerUp()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->base:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->base:Lcom/watabou/noosa/Image;

    const v1, 0x7b8073

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/Visual;->tint(IF)V

    :goto_0
    return-void
.end method
