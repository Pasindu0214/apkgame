.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;
.super Lcom/watabou/noosa/ui/Component;
.source "StatusPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;,
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;
    }
.end annotation


# static fields
.field public static final warningColors:[I


# instance fields
.field public avatar:Lcom/watabou/noosa/Image;

.field public bg:Lcom/watabou/noosa/NinePatch;

.field public bossHP:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;

.field public btnJournal:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;

.field public btnMenu:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;

.field public buffs:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

.field public compass:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;

.field public danger:Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;

.field public depth:Lcom/watabou/noosa/BitmapText;

.field public exp:Lcom/watabou/noosa/Image;

.field public hp:Lcom/watabou/noosa/Image;

.field public lastLvl:I

.field public lastTier:I

.field public level:Lcom/watabou/noosa/BitmapText;

.field public pickedUp:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;

.field public rawShielding:Lcom/watabou/noosa/Image;

.field public shieldedHP:Lcom/watabou/noosa/Image;

.field public version:Lcom/watabou/noosa/BitmapText;

.field public warning:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->warningColors:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x660000
        0xcc0000
        0x660000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->lastTier:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->lastLvl:I

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 11

    .line 1
    new-instance v10, Lcom/watabou/noosa/NinePatch;

    const-string v1, "status_pane.png"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x80

    const/16 v5, 0x24

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/16 v8, 0x2d

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIIIIII)V

    iput-object v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->bg:Lcom/watabou/noosa/NinePatch;

    .line 2
    invoke-virtual {p0, v10}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;)V

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 5
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->btnJournal:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;

    .line 7
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->btnMenu:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;

    .line 9
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->lastTier:I

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->avatar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;I)Lcom/watabou/noosa/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->avatar:Lcom/watabou/noosa/Image;

    .line 11
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;

    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    :goto_0
    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;-><init>(I)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->compass:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;

    .line 13
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 15
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v1, "shield_bar.png"

    .line 16
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 17
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->rawShielding:Lcom/watabou/noosa/Image;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 18
    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 19
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->rawShielding:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 21
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 22
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 23
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->shieldedHP:Lcom/watabou/noosa/Image;

    .line 24
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 26
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v1, "hp_bar.png"

    .line 27
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 28
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->hp:Lcom/watabou/noosa/Image;

    .line 29
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 30
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 31
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v1, "exp_bar.png"

    .line 32
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 33
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->exp:Lcom/watabou/noosa/Image;

    .line 34
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 35
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->bossHP:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;

    .line 36
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 37
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    const-string v3, ""

    .line 38
    invoke-direct {v0, v3, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 39
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->level:Lcom/watabou/noosa/BitmapText;

    const v1, 0xffeba4

    .line 40
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 41
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->level:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 42
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    invoke-direct {v0, v1, v3}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->depth:Lcom/watabou/noosa/BitmapText;

    const v1, 0xcacfc2

    .line 43
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 44
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 45
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 46
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->danger:Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;

    .line 47
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 48
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->buffs:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    .line 49
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 50
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->pickedUp:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 51
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    const-string v1, "v"

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/watabou/noosa/Game;->version:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    invoke-direct {v0, v1, v3}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->version:Lcom/watabou/noosa/BitmapText;

    .line 52
    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 53
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->version:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 6

    const/high16 v0, 0x42000000    # 32.0f

    .line 1
    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->bg:Lcom/watabou/noosa/NinePatch;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v2, v0, Lcom/watabou/noosa/Visual;->height:F

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->avatar:Lcom/watabou/noosa/Image;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->bg:Lcom/watabou/noosa/NinePatch;

    iget v2, v1, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v3, 0x41700000    # 15.0f

    add-float/2addr v2, v3

    iget v3, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iget v1, v1, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v2, 0x41800000    # 16.0f

    add-float/2addr v1, v2

    iget v2, v0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->compass:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Compass;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->avatar:Lcom/watabou/noosa/Image;

    iget v2, v1, Lcom/watabou/noosa/Visual;->x:F

    iget v3, v1, Lcom/watabou/noosa/Visual;->width:F

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    iget-object v2, v0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v5, v2, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v3, v5

    iput v3, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 7
    iget v3, v1, Lcom/watabou/noosa/Visual;->y:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    iget v2, v2, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 8
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->hp:Lcom/watabou/noosa/Image;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->shieldedHP:Lcom/watabou/noosa/Image;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->rawShielding:Lcom/watabou/noosa/Image;

    const/high16 v3, 0x41f00000    # 30.0f

    iput v3, v2, Lcom/watabou/noosa/Visual;->x:F

    iput v3, v1, Lcom/watabou/noosa/Visual;->x:F

    iput v3, v0, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v3, 0x40400000    # 3.0f

    .line 10
    iput v3, v2, Lcom/watabou/noosa/Visual;->y:F

    iput v3, v1, Lcom/watabou/noosa/Visual;->y:F

    iput v3, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->bossHP:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 12
    iget v2, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    const/high16 v2, 0x40c00000    # 6.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->depth:Lcom/watabou/noosa/BitmapText;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v3, 0x420e0000    # 35.5f

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->depth:Lcom/watabou/noosa/BitmapText;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->baseLine()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->danger:Lcom/shatteredpixel/shatteredpixeldungeon/ui/DangerIndicator;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 18
    iget v3, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v1, v3

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 20
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->buffs:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    const/high16 v1, 0x41f80000    # 31.0f

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 21
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->btnJournal:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v2, 0x42280000    # 42.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 22
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->btnMenu:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 23
    iget v3, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v1, v3

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 25
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->version:Lcom/watabou/noosa/BitmapText;

    iget-object v0, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(F)F

    move-result v1

    .line 26
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 27
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 28
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->version:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 29
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->version:Lcom/watabou/noosa/BitmapText;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 30
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->version:Lcom/watabou/noosa/BitmapText;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->btnMenu:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;

    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->version:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v3}, Lcom/watabou/noosa/BitmapText;->baseLine()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 31
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->version:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    return-void
.end method

.method public update()V
    .locals 13

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float v1, v1

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v0

    int-to-float v0, v0

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v3, v3

    .line 5
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v2

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->avatar:Lcom/watabou/noosa/Image;

    invoke-virtual {v2, v6, v5}, Lcom/watabou/noosa/Visual;->tint(IF)V

    goto :goto_1

    :cond_0
    div-float v2, v1, v3

    const v9, 0x3e99999a    # 0.3f

    cmpg-float v9, v2, v9

    if-gez v9, :cond_3

    .line 7
    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->warning:F

    sget v10, Lcom/watabou/noosa/Game;->elapsed:F

    const/high16 v11, 0x40a00000    # 5.0f

    mul-float v10, v10, v11

    const v11, 0x3ecccccd    # 0.4f

    sub-float/2addr v11, v2

    mul-float v11, v11, v10

    add-float/2addr v11, v9

    iput v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->warning:F

    const/high16 v2, 0x3f800000    # 1.0f

    rem-float/2addr v11, v2

    .line 8
    iput v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->warning:F

    .line 9
    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->avatar:Lcom/watabou/noosa/Image;

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->warningColors:[I

    cmpg-float v12, v11, v7

    if-gtz v12, :cond_1

    .line 10
    aget v2, v10, v6

    goto :goto_0

    :cond_1
    cmpl-float v6, v11, v2

    if-ltz v6, :cond_2

    .line 11
    array-length v2, v10

    add-int/2addr v2, v8

    aget v2, v10, v2

    goto :goto_0

    .line 12
    :cond_2
    array-length v6, v10

    add-int/2addr v6, v8

    int-to-float v6, v6

    mul-float v6, v6, v11

    float-to-int v6, v6

    .line 13
    aget v12, v10, v6

    add-int/2addr v6, v4

    aget v6, v10, v6

    array-length v10, v10

    add-int/2addr v10, v8

    int-to-float v10, v10

    mul-float v11, v11, v10

    rem-float/2addr v11, v2

    invoke-static {v12, v6, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->interpolate(IIF)I

    move-result v2

    .line 14
    :goto_0
    invoke-virtual {v9, v2, v5}, Lcom/watabou/noosa/Visual;->tint(IF)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->avatar:Lcom/watabou/noosa/Image;

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->resetColor()V

    .line 16
    :goto_1
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->hp:Lcom/watabou/noosa/Image;

    iget-object v2, v2, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    sub-float v5, v1, v0

    div-float/2addr v5, v3

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v2, Lcom/watabou/utils/PointF;->x:F

    .line 17
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->shieldedHP:Lcom/watabou/noosa/Image;

    iget-object v2, v2, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    div-float/2addr v1, v3

    iput v1, v2, Lcom/watabou/utils/PointF;->x:F

    .line 18
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->rawShielding:Lcom/watabou/noosa/Image;

    iget-object v1, v1, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    div-float/2addr v0, v3

    iput v0, v1, Lcom/watabou/utils/PointF;->x:F

    .line 19
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->exp:Lcom/watabou/noosa/Image;

    iget-object v1, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v0, v0, Lcom/watabou/noosa/Visual;->width:F

    div-float/2addr v2, v0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->maxExp()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 20
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->lastLvl:I

    if-eq v0, v1, :cond_5

    if-eq v1, v8, :cond_4

    .line 21
    const-class v0, Lcom/watabou/noosa/particles/Emitter;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/watabou/noosa/particles/Emitter;

    .line 22
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->revive()V

    const/high16 v1, 0x41d80000    # 27.0f

    .line 23
    invoke-virtual {v0, v1, v1}, Lcom/watabou/noosa/particles/Emitter;->pos(FF)V

    .line 24
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/16 v2, 0xc

    .line 25
    invoke-virtual {v0, v1, v7, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 26
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->lastLvl:I

    .line 27
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->level:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->level:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 29
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->level:Lcom/watabou/noosa/BitmapText;

    const/high16 v1, 0x41dc0000    # 27.5f

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 30
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->level:Lcom/watabou/noosa/BitmapText;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->baseLine()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 31
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->level:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 32
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->tier()I

    move-result v0

    .line 33
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->lastTier:I

    if-eq v0, v1, :cond_6

    .line 34
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->lastTier:I

    .line 35
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->avatar:Lcom/watabou/noosa/Image;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-static {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->avatar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;I)Lcom/watabou/noosa/Image;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    :cond_6
    return-void
.end method
