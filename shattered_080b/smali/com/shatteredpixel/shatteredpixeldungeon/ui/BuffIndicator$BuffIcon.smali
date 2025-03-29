.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;
.super Lcom/watabou/noosa/ui/Button;
.source "BuffIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BuffIcon"
.end annotation


# instance fields
.field public buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

.field public icon:Lcom/watabou/noosa/Image;

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 4
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 5
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 6
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->icon:Lcom/watabou/noosa/Image;

    .line 9
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->film:Lcom/watabou/noosa/TextureFilm;

    .line 10
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->icon()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 11
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->icon()I

    move-result v0

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoBuff;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    :cond_0
    return-void
.end method
