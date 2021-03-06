// by lu.ma@colorado.edu

#include "cu_sdf_reset.h"
#include "kangaroo/MatUtils.h"
#include "kangaroo/launch_utils.h"

namespace roo
{

//////////////////////////////////////////////////////
// Reset SDF
//////////////////////////////////////////////////////
void SdfReset(VolumeGrid<SDF_t,roo::TargetDevice, roo::Manage> vol)
{
  vol.Fill(SDF_t(0.0/0.0, 0));
}

void SdfReset(VolumeGrid<SDF_t_Smart,roo::TargetDevice, roo::Manage> vol)
{
  vol.Fill(SDF_t_Smart(0.0/0.0,0,0,0));
}

void SdfReset(VolumeGrid<float,roo::TargetDevice, roo::Manage> vol)
{
  vol.Fill(0.5);
}

void SdfReset(BoundedVolumeGrid<roo::SDF_t,roo::TargetDevice, roo::Manage> vol)
{
  for(unsigned int i=0;i!=vol.GetTotalGridNum();i++)
  {
    // reset for each valid rolling grid sdf
    if(vol.CheckIfBasicSDFActive(i)==true)
    {
      roo::SdfReset(vol.m_GridVolumes[i]);
    }
  }
}

void SdfReset(BoundedVolumeGrid<roo::SDF_t_Smart,roo::TargetDevice, roo::Manage> vol)
{
  for(unsigned int i=0;i!=vol.GetTotalGridNum();i++)
  {
    // reset for each valid rolling grid sdf
    if(vol.CheckIfBasicSDFActive(i)==true)
    {
      roo::SdfReset(vol.m_GridVolumes[i]);
    }
  }
}

void SdfReset(BoundedVolumeGrid<float,roo::TargetDevice, roo::Manage> vol)
{
  for(unsigned int i=0;i!=vol.GetTotalGridNum();i++)
  {
    // reset for each valid rolling grid sdf
    if(vol.CheckIfBasicSDFActive(i)==true)
    {
      roo::SdfReset(vol.m_GridVolumes[i]);
    }
  }
}

// ----- for grid sdf (in host memory)
void SdfReset(VolumeGrid<SDF_t,roo::TargetHost, roo::Manage> vol)
{
  vol.Fill(SDF_t(0.0/0.0, 0));
}

void SdfReset(VolumeGrid<SDF_t_Smart,roo::TargetHost, roo::Manage> vol)
{
  vol.Fill(SDF_t_Smart(0.0/0.0, 0));
}

void SdfReset(VolumeGrid<float,roo::TargetHost, roo::Manage> vol)
{
  vol.Fill(0.5);
}

void SdfReset(BoundedVolumeGrid<roo::SDF_t,roo::TargetHost, roo::Manage> vol)
{
  for(unsigned int i=0;i!=vol.m_nGridNum_w*vol.m_nGridNum_h*vol.m_nGridNum_d;i++)
  {
    // reset for each valid rolling grid sdf
    if(vol.CheckIfBasicSDFActive(i)==true)
    {
      roo::SdfReset(vol.m_GridVolumes[i]);
    }
  }
}

void SdfReset(BoundedVolumeGrid<roo::SDF_t_Smart,roo::TargetHost, roo::Manage> vol)
{
  for(unsigned int i=0;i!=vol.m_nGridNum_w*vol.m_nGridNum_h*vol.m_nGridNum_d;i++)
  {
    // reset for each valid rolling grid sdf
    if(vol.CheckIfBasicSDFActive(i)==true)
    {
      roo::SdfReset(vol.m_GridVolumes[i]);
    }
  }
}

void SdfReset(BoundedVolumeGrid<float,roo::TargetHost, roo::Manage> vol)
{
  for(unsigned int i=0;i!=vol.m_nGridNum_w*vol.m_nGridNum_h*vol.m_nGridNum_d;i++)
  {
    // reset for each valid rolling grid sdf
    if(vol.CheckIfBasicSDFActive(i)==true)
    {
      roo::SdfReset(vol.m_GridVolumes[i]);
    }
  }
}

}
