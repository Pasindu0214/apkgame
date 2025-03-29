.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;
.super Lcom/watabou/noosa/ui/Button;
.source "ItemSlot.java"


# static fields
.field public static final CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public static final CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public static final LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public static final REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public static final SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public static final TOMB:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;


# instance fields
.field public bottomRight:Lcom/watabou/noosa/BitmapText;

.field public bottomRightIcon:Lcom/watabou/noosa/Image;

.field public icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

.field public iconVisible:Z

.field public item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public topLeft:Lcom/watabou/noosa/BitmapText;

.field public topRight:Lcom/watabou/noosa/BitmapText;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$3;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$3;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->CRYSTAL_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$4;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$4;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->TOMB:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$5;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$5;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$6;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$6;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->iconVisible:Z

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->visible(Z)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->enable(Z)V

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    const-string v2, ""

    .line 5
    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 6
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topLeft:Lcom/watabou/noosa/BitmapText;

    .line 7
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    .line 9
    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 10
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    .line 11
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    .line 13
    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 14
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    .line 15
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public enable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topLeft:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRightIcon:Lcom/watabou/noosa/Image;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    :cond_1
    return-void
.end method

.method public item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-ne v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->frame(I)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glow(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->updateText()V

    return-void

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->enable(Z)V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->visible(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->updateText()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->enable(Z)V

    .line 10
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->visible(Z)V

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 12
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->updateText()V

    :goto_0
    return-void
.end method

.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->icon:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->height:F

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topLeft:Lcom/watabou/noosa/BitmapText;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topLeft:Lcom/watabou/noosa/BitmapText;

    iget v2, v0, Lcom/watabou/noosa/Visual;->width:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 8
    iget-object v0, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(F)F

    move-result v2

    .line 9
    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 12
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 13
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topLeft:Lcom/watabou/noosa/BitmapText;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 15
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 16
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    if-eqz v0, :cond_2

    .line 18
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 19
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 20
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    if-eqz v0, :cond_3

    .line 22
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 23
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 24
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRightIcon:Lcom/watabou/noosa/Image;

    if-eqz v0, :cond_4

    .line 26
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    sub-float/2addr v3, v1

    iput v3, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 27
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRightIcon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 28
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRightIcon:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    :cond_4
    return-void
.end method

.method public showParams(ZZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topLeft:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topLeft:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :goto_1
    if-eqz p3, :cond_2

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_2

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    :goto_2
    iput-boolean p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->iconVisible:Z

    return-void
.end method

.method public final updateText()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRightIcon:Lcom/watabou/noosa/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRightIcon:Lcom/watabou/noosa/Image;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topLeft:Lcom/watabou/noosa/BitmapText;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    iput-boolean v2, v3, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v2, v1, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v2, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topLeft:Lcom/watabou/noosa/BitmapText;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v6, v4, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v6, v3, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 7
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 9
    instance-of v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    const v5, 0xff8800

    const v7, 0xff4444

    if-nez v3, :cond_4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    if-eqz v3, :cond_3

    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;

    if-nez v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    new-array v4, v6, [Ljava/lang/Object;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;->depth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "\u007f%d"

    invoke-static {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->measure()V

    goto/16 :goto_5

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 14
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iget-boolean v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-nez v8, :cond_7

    if-eqz v4, :cond_5

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-nez v0, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    new-array v4, v6, [Ljava/lang/Object;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 16
    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->STRReq(I)I

    move-result v3

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 17
    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq(I)I

    move-result v3

    .line 18
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v3, "%d?"

    invoke-static {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    goto :goto_4

    .line 20
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz v3, :cond_8

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->STRReq()I

    move-result v0

    goto :goto_3

    :cond_8
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v0

    .line 21
    :goto_3
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v2

    const-string v8, ":%d"

    invoke-static {v8, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 22
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v3

    if-le v0, v3, :cond_9

    .line 23
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0, v7}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    goto :goto_4

    .line 24
    :cond_9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    .line 25
    :goto_4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->topRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 26
    :goto_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->visiblyUpgraded()I

    move-result v0

    .line 27
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedVisiblyUpgraded()I

    move-result v3

    if-eqz v3, :cond_e

    .line 28
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v2, "%+d"

    invoke-static {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v1}, Lcom/watabou/noosa/BitmapText;->measure()V

    if-eq v0, v3, :cond_c

    if-gtz v3, :cond_a

    goto :goto_6

    .line 30
    :cond_a
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    if-le v3, v0, :cond_b

    const v5, 0x3399ff

    :cond_b
    invoke-virtual {v1, v5}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    goto/16 :goto_a

    .line 31
    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    if-lez v3, :cond_d

    const v7, 0x44ff44

    :cond_d
    invoke-virtual {v0, v7}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    goto/16 :goto_a

    .line 32
    :cond_e
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-nez v3, :cond_10

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v0, :cond_f

    goto :goto_7

    .line 33
    :cond_f
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    goto :goto_a

    .line 34
    :cond_10
    :goto_7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRight:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-eqz v3, :cond_11

    .line 36
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 37
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->isKnown()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->initials:Ljava/lang/Integer;

    goto :goto_8

    .line 38
    :cond_11
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    .line 39
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->initials:Ljava/lang/Integer;

    :cond_12
    :goto_8
    if-eqz v1, :cond_16

    .line 40
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->iconVisible:Z

    if-eqz v0, :cond_16

    .line 41
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 42
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v3, "consumable_icons.png"

    .line 43
    invoke-virtual {v0, v3}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 44
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRightIcon:Lcom/watabou/noosa/Image;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    mul-int/lit8 v0, v0, 0x7

    .line 46
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    const/16 v5, 0x8

    if-eqz v4, :cond_13

    .line 47
    instance-of v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;

    if-eqz v3, :cond_15

    const/16 v2, 0x8

    goto :goto_9

    .line 48
    :cond_13
    instance-of v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;

    if-eqz v2, :cond_14

    const/16 v2, 0x18

    goto :goto_9

    :cond_14
    const/16 v2, 0x10

    .line 49
    :cond_15
    :goto_9
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRightIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v3, v0, v2, v1, v5}, Lcom/watabou/noosa/Image;->frame(IIII)V

    .line 50
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->bottomRightIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 51
    :cond_16
    :goto_a
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->layout()V

    return-void
.end method
