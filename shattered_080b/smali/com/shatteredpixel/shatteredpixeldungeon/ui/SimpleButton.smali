.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;
.super Lcom/watabou/noosa/ui/Component;
.source "SimpleButton.java"


# instance fields
.field public image:Lcom/watabou/noosa/Image;


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/Image;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;->image:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 3
    iget v0, p1, Lcom/watabou/noosa/Visual;->width:F

    iput v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 4
    iget p1, p1, Lcom/watabou/noosa/Visual;->height:F

    iput p1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 2

    .line 1
    new-instance v0, Lcom/watabou/noosa/Image;

    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;->image:Lcom/watabou/noosa/Image;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton$1;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;->image:Lcom/watabou/noosa/Image;

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;Lcom/watabou/noosa/Visual;)V

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;->image:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public onClick()V
    .locals 0

    const p0, 0x0

    throw p0
.end method
