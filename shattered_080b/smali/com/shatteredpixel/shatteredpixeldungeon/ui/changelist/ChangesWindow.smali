.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;
.source "ChangesWindow.java"


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow$1;

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget p3, p2, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v4, p3

    iget p2, p2, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v5, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow;FFFF)V

    .line 3
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object p2, p1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 4
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
