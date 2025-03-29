.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$2;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "MagesStaff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Lcom/watabou/noosa/particles/Emitter;IFF)V
    .locals 1

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->getFirstAvailable(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    invoke-direct {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 5
    iget-object p1, p2, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/4 v0, 0x0

    .line 6
    iput v0, p1, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v0, p1, Lcom/watabou/utils/PointF;->y:F

    .line 8
    iput p3, p2, Lcom/watabou/noosa/Visual;->x:F

    .line 9
    iput p4, p2, Lcom/watabou/noosa/Visual;->y:F

    .line 10
    iget-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    .line 11
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V

    :cond_1
    return-void
.end method

.method public lightMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 3
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfDisintegration;

    if-nez v1, :cond_0

    .line 4
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;

    if-nez v1, :cond_0

    .line 5
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorrosion;

    if-nez v1, :cond_0

    .line 6
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;

    if-nez v1, :cond_0

    .line 7
    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
