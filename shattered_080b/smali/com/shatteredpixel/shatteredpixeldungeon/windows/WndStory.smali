.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndStory.java"


# static fields
.field public static final CHAPTERS:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public delay:F

.field public tf:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->CHAPTERS:Lcom/watabou/utils/SparseArray;

    const/4 v1, 0x0

    const-string v2, "sewers"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->CHAPTERS:Lcom/watabou/utils/SparseArray;

    const/4 v1, 0x1

    const-string v2, "prison"

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->CHAPTERS:Lcom/watabou/utils/SparseArray;

    const/4 v1, 0x2

    const-string v2, "caves"

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->CHAPTERS:Lcom/watabou/utils/SparseArray;

    const/4 v1, 0x3

    const-string v2, "city"

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->CHAPTERS:Lcom/watabou/utils/SparseArray;

    const/4 v1, 0x4

    const-string v2, "halls"

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-static {v0}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1, v1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>(IIILcom/watabou/noosa/NinePatch;)V

    const/4 v0, 0x6

    .line 3
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->tf:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 4
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9c

    goto :goto_0

    :cond_0
    const/16 v0, 0x79

    :goto_0
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->tf:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->invert()V

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->tf:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->tf:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory$1;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    invoke-direct {p1, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;Lcom/watabou/noosa/Visual;)V

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->tf:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 10
    iget v1, p1, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 11
    iget p1, p1, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr p1, v0

    const/high16 v0, 0x43340000    # 180.0f

    .line 12
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method

.method public static showChapter(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->chapters:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->CHAPTERS:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, p0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;

    invoke-direct {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;-><init>(Ljava/lang/String;)V

    const v0, 0x3f19999a    # 0.6f

    .line 4
    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->delay:F

    .line 5
    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->shadow:Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;

    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->tf:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iput-boolean v2, v4, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v2, v3, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v2, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 6
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 7
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->chapters:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->delay:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->delay:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->shadow:Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->tf:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v3, v1, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v3, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    :cond_0
    return-void
.end method
